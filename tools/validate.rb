#!/usr/bin/env ruby
# frozen_string_literal: true

# Validates the repository content against the rules in CONTENT-MODEL.md
# (formerly enforced by the database the content was exported from).
#
# Usage:
#   ruby tools/validate.rb              # validate everything
#   ruby tools/validate.rb <path>...    # report only issues under the given paths
#
# Exits non-zero if errors are found; warnings alone don't fail the run.

require 'yaml'
require 'set'

ROOT = File.expand_path('..', __dir__)
LANGS = %w[de en].freeze

FRONTMATTER_KEYS = {
  'principle'  => { required: %w[id created_at], optional: [] },
  'guideline'  => { required: %w[id parent_id created_at], optional: [] },
  'criterion'  => { required: %w[id parent_id wcag_url created_at], optional: %w[wcag_version] },
  'checkpoint' => { required: %w[id wcag_criterion_id applies_to_pdf applies_to_design
                                 applies_to_development applies_to_content
                                 applies_to_quality_assurance created_at], optional: [] },
  'tag'        => { required: %w[id parent_id created_at], optional: [] }
}.freeze

H1_PREFIX = {
  'principle' => '# 📜 ', 'guideline' => '# 📜 ', 'criterion' => '# 📜 ',
  'checkpoint' => '# ✅ ', 'tag' => '# 🏷️ '
}.freeze

WCAG_SLUG_RE  = /\A\d+(\.\d+){0,2}[a-z]?(-[a-z0-9]+)+\z/
PLAIN_SLUG_RE = /\A[a-z0-9]+(-[a-z0-9]+)*\z/
CREATED_AT_RE = /\A\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\z/

Entry = Struct.new(:rel, :lang, :type, :slug, :num, :fm, :body, keyword_init: true)

class Validator
  def initialize
    @errors = []
    @warnings = []
    @entries = []
  end

  def error(rel, msg) = @errors << [rel, msg]
  def warn(rel, msg)  = @warnings << [rel, msg]

  def run
    collect
    @entries.each { |e| check_frontmatter(e) }
    @entries.each { |e| check_body(e) }
    @entries.each { |e| check_links(e) }
    check_ids_and_references
    check_parity
    check_stray_files_and_images
    [@errors, @warnings]
  end

  private

  def collect
    LANGS.each do |lang|
      Dir.glob("#{ROOT}/#{lang}/{wcag,tags}/**/README.md").sort.each do |path|
        rel = path.sub("#{ROOT}/", '')
        parts = rel.split('/')
        type, slug =
          case [parts[1], parts.size]
          in ['tags', 4] then ['tag', parts[2]]
          in ['wcag', 4]
            num = parts[2][/\A\d+(\.\d+){0,2}[a-z]?/]
            [%w[principle guideline criterion][num.to_s.count('.')], parts[2]]
          in ['wcag', 5] then ['checkpoint', parts[3]]
          else [nil, nil]
          end
        next error(rel, 'unexpected location for a README.md') unless type

        text = File.read(path, encoding: 'UTF-8')
        fm, body = parse_frontmatter(rel, text)
        error(rel, 'missing trailing newline') unless text.end_with?("\n")
        @entries << Entry.new(rel: rel, lang: lang, type: type, slug: slug,
                              num: slug[/\A\d+(\.\d+){0,2}[a-z]?/], fm: fm, body: body)
      end
    end
  end

  def parse_frontmatter(rel, text)
    parts = text.split(/^---\s*$\n/, 3)
    return error(rel, 'missing frontmatter') || [{}, text] if parts.size < 3 || !text.start_with?("---\n")

    [YAML.safe_load(parts[1]) || {}, parts[2]]
  rescue Psych::Exception => e
    error(rel, "invalid frontmatter YAML: #{e.message}")
    [{}, parts[2].to_s]
  end

  def check_frontmatter(e)
    keys = FRONTMATTER_KEYS.fetch(e.type)
    (keys[:required] - e.fm.keys).each { |k| error(e.rel, "missing frontmatter key: #{k}") }
    (e.fm.keys - keys[:required] - keys[:optional]).each { |k| error(e.rel, "unknown frontmatter key: #{k}") }

    e.fm.each do |k, v|
      error(e.rel, "frontmatter value of #{k} must be a quoted string, got #{v.class}") unless v.is_a?(String)
    end

    error(e.rel, "id must be a non-empty numeric string, got #{e.fm['id'].inspect}") unless e.fm['id'].to_s.match?(/\A\d+\z/)
    if (ts = e.fm['created_at']) && !ts.to_s.match?(CREATED_AT_RE)
      error(e.rel, "created_at must be \"YYYY-MM-DD HH:MM:SS\", got #{ts.inspect}")
    end

    case e.type
    when 'criterion'
      unless e.fm['wcag_url'].to_s.start_with?('https://www.w3.org/')
        error(e.rel, "wcag_url must be a w3.org URL, got #{e.fm['wcag_url'].inspect}")
      end
      split = e.num.to_s.match?(/[a-z]\z/)
      version = e.fm['wcag_version']
      if split
        error(e.rel, 'split criteria carry no wcag_version') if version
      elsif !%w[2.0 2.1 2.2].include?(version.to_s)
        error(e.rel, "wcag_version must be \"2.0\", \"2.1\" or \"2.2\", got #{version.inspect}")
      end
    when 'checkpoint'
      e.fm.each do |k, v|
        next unless k.start_with?('applies_to_')
        error(e.rel, "#{k} must be \"true\" or \"false\", got #{v.inspect}") unless %w[true false].include?(v.to_s)
      end
    end

    slug_re = e.type == 'tag' || e.type == 'checkpoint' ? PLAIN_SLUG_RE : WCAG_SLUG_RE
    error(e.rel, "folder name doesn't match naming rules: #{e.slug}") unless e.slug.match?(slug_re)
  end

  def check_body(e)
    h1s = e.body.scan(/^# (.+)$/).flatten
    return error(e.rel, 'body must contain exactly one H1') unless h1s.size == 1

    prefix = H1_PREFIX.fetch(e.type)
    unless e.body.match?(/^#{Regexp.escape(prefix)}/)
      error(e.rel, "H1 must start with \"#{prefix.strip}\" for a #{e.type}")
    end
    split = e.num.to_s.match?(/[a-z]\z/)
    if e.type == 'criterion' && !split && !h1s.first.match?(/ - AA?\z/)
      error(e.rel, "criterion H1 must end with the conformance level (\"- A\" or \"- AA\"): #{h1s.first.inspect}")
    end
  end

  def check_links(e)
    dir = File.dirname("#{ROOT}/#{e.rel}")
    e.body.scan(/\]\(([^)\s]+)\)/).flatten.each do |target|
      case target
      when %r{\Ahttps?://}, /\Amailto:/
        next
      when %r{\A/(de|en)/}
        plain = target.split('#').first.chomp('/')
        unless File.exist?("#{ROOT}#{plain}/README.md")
          error(e.rel, "broken internal link: #{target}")
        end
        if Regexp.last_match(1) != e.lang
          warn(e.rel, "link crosses languages: #{target}")
        end
      when %r{\Aimages/}
        error(e.rel, "broken image reference: #{target}") unless File.exist?("#{dir}/#{target}")
      when '..'
        next
      when %r{\A#}
        next
      else
        unless File.exist?("#{dir}/#{target}/README.md")
          error(e.rel, "broken relative link: #{target}")
        end
      end
    end
  end

  def check_ids_and_references
    LANGS.each do |lang|
      entries = @entries.select { |e| e.lang == lang }
      # Uniqueness: ids are unique per content type (WCAG levels share one namespace).
      entries.group_by { |e| [e.type == 'tag' ? 'tag' : e.type == 'checkpoint' ? 'checkpoint' : 'wcag', e.fm['id']] }
             .each_value do |dupes|
        next if dupes.size == 1
        dupes.each { |e| error(e.rel, "duplicate id #{e.fm['id'].inspect} (also used by #{(dupes - [e]).map(&:rel).join(', ')})") }
      end

      wcag_by_num = entries.select { |e| e.num }.to_h { |e| [e.num, e] }
      tag_ids = entries.select { |e| e.type == 'tag' }.to_h { |e| [e.fm['id'], e] }

      entries.each do |e|
        case e.type
        when 'guideline', 'criterion'
          # Guideline → principle, criterion → guideline; split criteria (1.3.1a)
          # point at the criterion they split (1.3.1).
          parent_num =
            if e.type == 'guideline' then e.num[/\A\d+/]
            elsif e.num.match?(/[a-z]\z/) then e.num[/\A\d+\.\d+\.\d+/]
            else e.num[/\A\d+\.\d+/]
            end
          expected_parent = wcag_by_num[parent_num]
          if expected_parent.nil?
            error(e.rel, "no parent folder found for number #{parent_num}")
          elsif e.fm['parent_id'] != expected_parent.fm['id']
            error(e.rel, "parent_id #{e.fm['parent_id'].inspect} doesn't match #{expected_parent.rel} (id #{expected_parent.fm['id'].inspect})")
          end
        when 'checkpoint'
          criterion = @entries.find { |c| c.lang == e.lang && c.rel == "#{File.dirname(File.dirname(e.rel))}/README.md" }
          if criterion && e.fm['wcag_criterion_id'] != criterion.fm['id']
            error(e.rel, "wcag_criterion_id #{e.fm['wcag_criterion_id'].inspect} doesn't match containing criterion (id #{criterion.fm['id'].inspect})")
          end
          error(e.rel, 'checkpoints may only sit inside criterion folders') if criterion && criterion.type != 'criterion'
        when 'tag'
          parent = e.fm['parent_id'].to_s
          unless parent.empty? || tag_ids.key?(parent)
            error(e.rel, "parent_id #{parent.inspect} doesn't resolve to any tag")
          end
        end
      end
    end
  end

  def check_parity
    maps = LANGS.to_h do |lang|
      [lang, @entries.select { |e| e.lang == lang }
                     .to_h { |e| [[e.type == 'tag' ? 'tag' : e.type == 'checkpoint' ? 'checkpoint' : 'wcag', e.fm['id']], e] }]
    end
    (maps['de'].keys - maps['en'].keys).each do |key|
      error(maps['de'][key].rel, "no English counterpart with #{key[0]} id #{key[1].inspect}")
    end
    (maps['en'].keys - maps['de'].keys).each do |key|
      error(maps['en'][key].rel, "no German counterpart with #{key[0]} id #{key[1].inspect}")
    end
  end

  def check_stray_files_and_images
    referenced = @entries.flat_map do |e|
      dir = File.dirname(e.rel)
      e.body.scan(/\]\((images\/[^)\s]+)\)/).flatten.map { |t| "#{dir}/#{t}" }
    end.to_set

    LANGS.each do |lang|
      Dir.glob("#{ROOT}/#{lang}/**/*", File::FNM_DOTMATCH).sort.each do |path|
        next if File.directory?(path)
        rel = path.sub("#{ROOT}/", '')
        base = File.basename(path)
        next if base == '.DS_Store' # OS noise, git-ignored

        if rel.split('/').include?('images')
          error(rel, 'only PNG files are allowed in images folders') unless base.end_with?('.png')
          warn(rel, 'image is not referenced by any README.md') unless referenced.include?(rel)
        elsif base != 'README.md'
          error(rel, 'unexpected file (content folders contain only README.md and images/)')
        end
      end
    end
  end
end

errors, warnings = Validator.new.run

filter = ARGV.map { |a| File.expand_path(a).sub("#{ROOT}/", '').chomp('/') }
unless filter.empty?
  keep = ->(rel) { filter.any? { |f| rel == f || rel.start_with?("#{f}/") } }
  errors = errors.select { |rel, _| keep.(rel) }
  warnings = warnings.select { |rel, _| keep.(rel) }
end

errors.sort.each { |rel, msg| puts "ERROR #{rel}: #{msg}" }
warnings.sort.each { |rel, msg| puts "WARN  #{rel}: #{msg}" }
puts "#{errors.size} error(s), #{warnings.size} warning(s)"
exit errors.empty? ? 0 : 1
