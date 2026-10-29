# CLAUDE.md

This is a **content-only repository** (Markdown, no application code): the A11y Checklist and Test Specification by Access for all (A4a). It is the single source of truth — the content was exported from a database whose constraints are now enforced by documentation and tooling in this repo.

## Rules for editing content

- Read [CONTENT-MODEL.md](CONTENT-MODEL.md) before creating or restructuring content. It defines the content types (principle, guideline, criterion, checkpoint, tag), their frontmatter schemas, naming rules, and link formats.
- After any content change, run the validator and fix what it reports:

  ```sh
  ruby tools/validate.rb
  ```

- German (`de/`) and English (`en/`) files are paired by frontmatter `(type, id)`, not by path. When adding content, always create both language versions with the same `id`; pick the next free id within that content type.
- New ids: numeric strings, unique per content type per language (`ruby tools/validate.rb` catches collisions).
- Keep frontmatter values quoted strings (`"true"`, not `true`), including in new files.
- German is the primary language; English Test Specification content (checkpoints, tags) may still be untranslated German text, but the files must exist.
- Write body text in the established style: address the reader as "Sie" in German; keep examples concrete and code samples minimal.

## Workflow

- Follow [CONTRIBUTING.md](CONTRIBUTING.md): `main` is frozen until mid-January 2027 (work on `interim-main`), pull request texts are German, commit messages English.
- When something is agreed in a session, write it into the repository (CONTRIBUTING.md, CONTENT-MODEL.md, or docs/decisions/), not only into Claude's memory, so other contributors benefit too. Keep confidential context (customers, internal considerations) out of it — the repository is public.
- Before the first change of a task, ask whether to work in the current checkout or in a separate worktree; name the expected branch and say which you'd pick. The user often edits in the same checkout meanwhile: a shared checkout shows them your edits as you make them, and a branch switch swaps the files under their open editor.
  - Current checkout: short tasks and anything the user wants to follow live.
  - Separate worktree (`git worktree add <scratchpad>/wt-<slug> -b <branch> interim-main`): longer work and anything on its own branch. Put it in the session's scratchpad, not in the repository. It needs nothing copied over: the only ignored files are `.DS_Store` and `.claude/settings.local.json`, and the validator uses only Ruby's standard library. Remove it after the merge (`git worktree remove <path>`), and report leftover worktrees instead of leaving them.
  - While the work lives in a worktree, link files in replies by their absolute path until it is merged. A relative link resolves against the user's workspace: a file that exists only in the worktree doesn't open, and a changed one opens the user's version instead.
- Never commit without asking which branch, and never push without asking; [/a11y-checklist-commit](.claude/skills/a11y-checklist-commit/SKILL.md) lists the branch options and how to commit to another branch.
- Procedures for a specific moment (before a commit, when logging a decision) are skills in `.claude/skills/a11y-checklist-<topic>/SKILL.md`, the layout used across Josua's projects; the `description` says when to use the skill. Rules that always apply belong in this file.
- Keep code comments (in `tools/`) to one or two lines naming the non-obvious constraint, not retelling how the mechanism works. The full reasoning goes into the commit message and the pull request, which the comment links.

## What not to do

- Don't add Markdown extensions (tables are fine, no footnotes/frontmatter-in-body/etc. beyond what's already used).
- Don't rename folders without updating all links pointing to them (the validator finds stragglers).
- Don't remove or renumber `id`s — they pair translations and may be used by downstream documentation generators.
