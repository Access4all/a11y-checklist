# CLAUDE.md

This is a **content-only repository** (Markdown, no application code): the A11y Checklist and Test Specification by Access for all (A4a). It is the single source of truth — the content was exported from a database whose constraints are now enforced by documentation and tooling in this repo.

## Rules for editing content

- Read [CONTENT-MODEL.md](CONTENT-MODEL.md) before creating or restructuring content. It defines the content types (principle, guideline, criterion, checkpoint, tag), their frontmatter schemas, naming rules, and link formats.
- After any content change, run the validator and fix what it reports:

  ```sh
  ruby tools/validate.rb
  ```

- When changing `tools/validate.rb` itself, also run `ruby tools/validate_test.rb`, and give every new rule a defect and an expectation there. A run over the real content only shows that valid content passes, not that each rule still fires.

- German (`de/`) and English (`en/`) files are paired by frontmatter `(type, id)`, not by path. When adding content, always create both language versions with the same `id`; pick the next free id within that content type.
- New ids: numeric strings, unique per content type per language (`ruby tools/validate.rb` catches collisions).
- Keep frontmatter values quoted strings (`"true"`, not `true`), including in new files.
- German is the primary language; English Test Specification content (checkpoints, tags) may still be untranslated German text, but the files must exist.
- Write body text in the established style: address the reader as "Sie" in German; keep examples concrete and code samples minimal.

## Workflow

- Follow [CONTRIBUTING.md](CONTRIBUTING.md): `main` is frozen until mid-January 2027 (work on `interim-main`), pull request texts are German, commit messages English.
- When something is agreed in a session, write it into the repository (CONTRIBUTING.md, CONTENT-MODEL.md, or docs/decisions.md), not only into Claude's memory, so other contributors benefit too. Keep confidential context (customers, internal considerations) out of it — the repository is public.

## What not to do

- Don't add Markdown extensions (tables are fine, no footnotes/frontmatter-in-body/etc. beyond what's already used).
- Don't rename folders without updating all links pointing to them (the validator finds stragglers).
- Don't remove or renumber `id`s — they pair translations and may be used by downstream documentation generators.
