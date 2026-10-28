---
description: Commit the working tree and, on a PR branch, bring the PR title and description up to date in the same pass
---

Commit the current changes: $ARGUMENTS

Whenever the user asks for a commit (also in plain words, without this command), follow these steps — the point of this command is that a commit on a PR branch and the PR title/description update are **one unit of work**, never two.

1. If the current branch is `main`, stop: `main` is frozen until mid-January 2027 (see "Branches" in CONTRIBUTING.md). Commit on `interim-main` or a branch off it instead.
2. Run `ruby tools/validate.rb`. It must report 0 errors. Otherwise stop and report — do not commit.
3. Review `git status` and `git diff` to write an accurate message. House style: short imperative subject, lowercase, no conventional-commit prefix (match `git log --oneline`); reference a decision number when one was logged (e.g. `(decision #3)`).
4. Commit everything that belongs to the change.
5. If the current branch is not `main`, sync the PR:
   - `gh pr view --json title,body` (skip this step if there is no open PR).
   - Compare title **and** body against what the branch now contains. A PR whose scope grew needs a new title, not just a new body.
   - Update whatever is stale with `gh pr edit`, keeping the body's existing structure and its trailing "Generated with Claude Code" line. PR texts are German (see "Language" in CONTRIBUTING.md).
6. Report: commit hash, validation result, and whether the PR title/body were updated or already accurate.
