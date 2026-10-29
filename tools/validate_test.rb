#!/usr/bin/env ruby
# frozen_string_literal: true

# Checks that every rule of tools/validate.rb still fires and that valid content
# passes. Builds a small content tree in a temporary folder, valid except for one
# defect per rule, runs the validator over it once, and compares the reported
# issues with the expected ones. A run takes a fraction of a second, so all
# defects share one run.
#
# Usage:
#   ruby tools/validate_test.rb
#
# A new rule in validate.rb needs a defect and an expectation here.

require 'fileutils'
require 'open3'
require 'rbconfig'
require 'tmpdir'
require_relative 'validate'

DEFAULTS = {
  'created_at' => '2024-01-01 12:00:00',
  'wcag_url' => 'https://www.w3.org/WAI/WCAG22/Understanding/'
}.freeze
FLAG_RE = /\A(applies_to_|applicable_to_|blind_testable\z)/

@files = {}
@expected = []

def file(rel, text) = @files[rel] = text

def expect(rel, *patterns, level: 'ERROR')
  patterns.each { |p| @expected << [level, rel, p] }
end

def default(key)
  return DEFAULTS[key] if DEFAULTS.key?(key)
  return 'true' if key.match?(FLAG_RE)

  raise "no default for frontmatter key #{key}"
end

# The text of a valid README.md, built from the validator's own tables. fm
# overrides frontmatter values (nil drops the key); h1 and sections replace the
# default title and required H2 sections, extra is appended.
def entry(type, lang, fm:, h1: nil, sections: nil, extra: '')
  values = FRONTMATTER_KEYS.fetch(type)[:required].to_h { |k| [k, fm.fetch(k) { default(k) }] }
  values = values.merge(fm).compact
  front = values.map { |k, v| "#{k}: #{v.is_a?(String) ? v.inspect : v}" }.join("\n")
  h1 ||= "#{H1_PREFIX.fetch(type)}Titel#{' - A' if type == 'criterion'}"
  sections ||= H2_SECTIONS.fetch(type).fetch(lang).select(&:last).map(&:first)
  "---\n#{front}\n---\n\n#{h1}\n\n#{sections.map { |s| "## #{s}\n\nText.\n\n" }.join}#{extra}"
end

def tag(id, parent = '') = { 'id' => id, 'parent_id' => parent }
def criterion(id, parent = '2') = { 'id' => id, 'parent_id' => parent, 'wcag_version' => '2.2' }
def checkpoint(id) = { 'id' => id, 'wcag_criterion_id' => '3' }

# A defect in the German entry at de/<path>; the English entry at en/<en_path>
# stays valid and shares the id, so the languages still pair up. Returns the
# German path. A block can rewrite the German text.
def defect(path, type, fm, de_fm: {}, en_path: path, **de_opts)
  text = entry(type, 'de', fm: fm.merge(de_fm), **de_opts)
  file "de/#{path}/README.md", block_given? ? yield(text) : text
  file "en/#{en_path}/README.md", entry(type, 'en', fm: fm)
  "de/#{path}/README.md"
end

# Valid content in both languages, including links and files that must pass.
LANGS.each do |l|
  crit = "#{l}/wcag/1.1.1-criterion"
  file "#{l}/wcag/1-principle/README.md", entry('principle', l, fm: { 'id' => '1' })
  file "#{l}/wcag/1.1-guideline/README.md", entry('guideline', l, fm: { 'id' => '2', 'parent_id' => '1' })
  file "#{crit}/README.md", entry('criterion', l, fm: criterion('3'), extra: <<~MD)
    [intern](/#{l}/wcag/1.1.1-criterion#anker) [relativ](checkpoint) [hoch](..) [Anker](#anker)
    [extern](https://example.org) [Mail](mailto:info@example.org)

    ```md
    ## Kein Abschnitt, weil im Codeblock
    ```
  MD
  file "#{crit}/checkpoint/README.md", entry('checkpoint', l, fm: checkpoint('1'), extra: "![Bild](images/ok.png)\n")
  file "#{crit}/checkpoint/images/ok.png", ''
  file "#{l}/wcag/1.1.1a-split-criterion/README.md",
       entry('criterion', l, fm: { 'id' => '4', 'parent_id' => '3' }, h1: '# 📜 Teil ohne Stufe')
  file "#{l}/tags/tag/README.md", entry('tag', l, fm: tag('1'))
  file "#{l}/tags/tag/.DS_Store", ''
  file "#{l}/tags/child-tag/README.md", entry('tag', l, fm: tag('2', '1'))
end

# Location and frontmatter
file 'de/wcag/1.1.1-criterion/checkpoint/nested/README.md', "Text.\n"
expect 'de/wcag/1.1.1-criterion/checkpoint/nested/README.md', /unexpected location/
expect defect('tags/no-newline', 'tag', tag('10'), &:rstrip), /missing trailing newline/
file 'de/tags/no-frontmatter/README.md', "# 🏷️ Titel\n\n## Beschreibung\n\nText.\n"
expect 'de/tags/no-frontmatter/README.md', /\Amissing frontmatter\z/,
       /missing frontmatter key: /, /id must be a non-empty numeric string/, /no English counterpart/
file 'de/wcag/1.1.1-criterion/bad-yaml/README.md', entry('checkpoint', 'de', fm: checkpoint('50')).sub('id: "50"', 'id: [')
expect 'de/wcag/1.1.1-criterion/bad-yaml/README.md', /invalid frontmatter YAML/,
       /missing frontmatter key: /, /id must be/, /at least one applies_to_\* flag/,
       /wcag_criterion_id nil doesn't match/, /no English counterpart/
expect defect('tags/missing-key', 'tag', tag('11'), de_fm: { 'created_at' => nil }), /missing frontmatter key: created_at/
expect defect('tags/unknown-key', 'tag', tag('12'), de_fm: { 'farbe' => 'rot' }), /unknown frontmatter key: farbe/
expect defect('tags/unquoted', 'tag', tag('13'), de_fm: { 'parent_id' => 1 }),
       /frontmatter value of parent_id must be a quoted string, got Integer/
LANGS.each { |l| file "#{l}/tags/bad-id/README.md", entry('tag', l, fm: tag('x1')) }
LANGS.each { |l| expect "#{l}/tags/bad-id/README.md", /id must be a non-empty numeric string/ }
expect defect('tags/bad-date', 'tag', tag('14'), de_fm: { 'created_at' => '2024-01-01' }), /created_at must be/
expect defect('wcag/1.1.2-bad-url', 'criterion', criterion('30'), de_fm: { 'wcag_url' => 'https://example.org/' }),
       /wcag_url must be a w3.org URL/
expect defect('wcag/1.1.1b-split-with-version', 'criterion', { 'id' => '31', 'parent_id' => '3' },
              de_fm: { 'wcag_version' => '2.2' }), /split criteria carry no wcag_version/
expect defect('wcag/1.1.6-bad-version', 'criterion', criterion('32'), de_fm: { 'wcag_version' => '3.0' }),
       /wcag_version must be/
expect defect('wcag/1.1.1-criterion/bad-flag', 'checkpoint', checkpoint('51'), de_fm: { 'applies_to_design' => 'ja' }),
       /applies_to_design must be "true" or "false"/
no_audience = FRONTMATTER_KEYS['checkpoint'][:required].grep(/\Aapplies_to_/).to_h { |k| [k, 'false'] }
expect defect('wcag/1.1.1-criterion/no-audience', 'checkpoint', checkpoint('52'), de_fm: no_audience),
       /at least one applies_to_\* flag must be "true"/
expect defect('tags/Bad_Name', 'tag', tag('15'), en_path: 'tags/bad-name'), /folder name doesn't match naming rules/

# Headings
expect defect('tags/two-h1', 'tag', tag('16'), extra: "# 🏷️ Noch ein Titel\n"), /exactly one H1/
expect defect('tags/wrong-prefix', 'tag', tag('17'), h1: '# ✅ Titel'), /H1 must start with "# 🏷️" for a tag/
expect defect('wcag/1.1.3-no-level', 'criterion', criterion('33'), h1: '# 📜 Titel'),
       /criterion H1 must end with the conformance level/
expect defect('tags/unknown-h2', 'tag', tag('18'), extra: "## Weiteres\n\nText.\n"), /unknown H2 section: "Weiteres"/
expect defect('tags/duplicate-h2', 'tag', tag('19'), extra: "## Beschreibung\n\nText.\n"),
       /duplicate H2 section: "Beschreibung"/
expect defect('tags/missing-h2', 'tag', tag('20'), sections: []), /missing H2 section: "Beschreibung"/
expect defect('wcag/1.1.4-wrong-order', 'criterion', criterion('34'),
              sections: ['Verstehen (ausführlich)', 'Verstehen (in Kürze)', '✅ Checkpoints']),
       /H2 sections out of order/

# Links
expect defect('tags/broken-internal', 'tag', tag('21'), extra: "[x](/de/wcag/9.9.9-fehlt)\n"), /broken internal link/
expect defect('tags/cross-lang', 'tag', tag('22'), extra: "[x](/en/tags/tag)\n"), /link crosses languages/, level: 'WARN'
expect defect('tags/broken-image', 'tag', tag('23'), extra: "![x](images/fehlt.png)\n"), /broken image reference/
expect defect('tags/broken-relative', 'tag', tag('24'), extra: "[x](fehlt)\n"), /broken relative link: fehlt/

# Ids and references
file 'de/tags/dup-a/README.md', entry('tag', 'de', fm: tag('30'))
file 'de/tags/dup-b/README.md', entry('tag', 'de', fm: tag('30'))
file 'en/tags/dup/README.md', entry('tag', 'en', fm: tag('30'))
expect 'de/tags/dup-a/README.md', /duplicate id "30"/
expect 'de/tags/dup-b/README.md', /duplicate id "30"/
expect defect('wcag/2.1-orphan', 'guideline', { 'id' => '35', 'parent_id' => '1' }, en_path: 'wcag/1.2-guideline'),
       /no parent folder found for number 2\z/
expect defect('wcag/1.1.5-wrong-parent', 'criterion', criterion('36'), de_fm: { 'parent_id' => '1' }),
       /parent_id "1" doesn't match/
expect defect('wcag/1.1.1-criterion/wrong-criterion', 'checkpoint', checkpoint('53'), de_fm: { 'wcag_criterion_id' => '99' }),
       /wcag_criterion_id "99" doesn't match containing criterion/
expect defect('wcag/1.1-guideline/misplaced', 'checkpoint', checkpoint('54'), de_fm: { 'wcag_criterion_id' => '2' },
              en_path: 'wcag/1.1.1-criterion/placed'),
       /checkpoints may only sit inside criterion folders/
expect defect('tags/orphan-tag', 'tag', tag('25'), de_fm: { 'parent_id' => '99' }), /parent_id "99" doesn't resolve/

# Language pairs
file 'de/tags/only-german/README.md', entry('tag', 'de', fm: tag('40'))
expect 'de/tags/only-german/README.md', /no English counterpart with tag id "40"/
file 'en/tags/only-english/README.md', entry('tag', 'en', fm: tag('41'))
expect 'en/tags/only-english/README.md', /no German counterpart with tag id "41"/

# Files besides README.md
file 'de/wcag/1.1.1-criterion/checkpoint/images/foto.jpg', ''
expect 'de/wcag/1.1.1-criterion/checkpoint/images/foto.jpg', /only PNG files/
expect 'de/wcag/1.1.1-criterion/checkpoint/images/foto.jpg', /not referenced/, level: 'WARN'
file 'de/wcag/1.1.1-criterion/checkpoint/images/unused.png', ''
expect 'de/wcag/1.1.1-criterion/checkpoint/images/unused.png', /not referenced/, level: 'WARN'
file 'de/tags/tag/notizen.txt', ''
expect 'de/tags/tag/notizen.txt', /unexpected file/

def run_validator(root, *paths)
  out, status = Open3.capture2e({ 'VALIDATE_ROOT' => root }, RbConfig.ruby, File.join(__dir__, 'validate.rb'), *paths)
  out = out.force_encoding('UTF-8')
  issues = out.lines.filter_map { |line| line.match(/\A(ERROR|WARN)\s+(\S+): (.*)$/)&.captures }
  [issues, status, out]
end

failures = []
Dir.mktmpdir do |root|
  @files.each do |rel, text|
    FileUtils.mkdir_p(File.dirname(File.join(root, rel)))
    File.write(File.join(root, rel), text)
  end

  issues, status, out = run_validator(root)
  unless status.exitstatus == 1 && out.match?(/^\d+ error\(s\), \d+ warning\(s\)$/)
    failures << "validator didn't finish with errors (exit #{status.exitstatus}):\n#{out}"
  end
  matches = ->(issue, exp) { issue[0] == exp[0] && issue[1] == exp[1] && issue[2].match?(exp[2]) }
  @expected.each do |exp|
    failures << "missing: #{exp[0]} #{exp[1]}: #{exp[2].inspect}" unless issues.any? { |i| matches.(i, exp) }
  end
  issues.each do |i|
    failures << "unexpected: #{i.join(' ')}" unless @expected.any? { |exp| matches.(i, exp) }
  end

  filtered, = run_validator(root, File.join(root, 'de/tags/broken-image'))
  unless filtered.any? && filtered.all? { |i| i[1].start_with?('de/tags/broken-image/') }
    failures << "path filter: expected only issues under de/tags/broken-image/, got #{filtered.inspect}"
  end
end

if failures.empty?
  puts "ok: #{@expected.size} expected issues reported, nothing else"
else
  puts failures
  puts "#{failures.size} failure(s)"
  exit 1
end
