---
name: a11y-checklist-commit
description: Use whenever the user asks for a commit, also in plain words without this skill. Asks which branch, validates, stages explicit paths, and on a PR branch brings the PR title and description up to date in the same pass
---

Commit the current changes: $ARGUMENTS

Whenever the user asks for a commit (also in plain words, without invoking this skill), follow these steps — the point of this skill is that a commit on a PR branch and the PR title/description update are **one unit of work**, never two.

1. If the current branch is `main`, stop: `main` is frozen until mid-January 2027 (see "Branches" in CONTRIBUTING.md). Commit on `interim-main` or a branch off it instead.
2. Ask which branch to commit to, unless the user already named it for this commit. Offer, each with its branch name:
   - the current branch;
   - another branch, usually `interim-main` (`main` only with Josua's explicit go-ahead);
   - another branch, then cherry-pick the commit back into the current one;
   - don't commit yet.
3. Run `ruby tools/validate.rb` in the checkout or worktree you commit from. It must report 0 errors. Otherwise stop and report — do not commit.
4. Review `git status` and `git diff` to write an accurate message. House style: short imperative subject, lowercase, no conventional-commit prefix (match `git log --oneline`); when a decision was logged, name its file in the message body (e.g. `Decision: docs/decisions/2026-10-29-one-file-per-decision.md`).
5. Stage explicit paths only (`git add <path>…`), never `git add -A` or `git add .`: the working tree often holds the user's own unrelated work.
6. To commit to another branch, use a temporary worktree of that branch in the scratchpad, never a switch of the user's checkout. Carry the change over as a patch (`git diff HEAD --binary -- <paths> | git -C <worktree> apply --index`), not by copying files: a copied file brings along everything the current branch changed in it before (e.g. CLAUDE.md differs between `interim-main` and older PR branches). If that branch is the one the current branch is based on, the changes are still uncommitted in the user's checkout and the next merge would be refused: compare each local copy byte for byte with the committed one, discard the identical ones, and merge the branch back right away. If one differs, ask.
7. Sync the PR of the branch you committed to:
   - `gh pr view <branch> --json title,body` (skip this step if there is no open PR).
   - Compare title **and** body against what the branch now contains. A PR whose scope grew needs a new title, not just a new body.
   - Update whatever is stale with `gh pr edit`, keeping the body's existing structure and its trailing "Generated with Claude Code" line. PR texts are German (see "Language" in CONTRIBUTING.md).
8. Don't push unless asked.
9. Report: commit hash, validation result, whether the PR title/body were updated or already accurate, and which branches are now ahead of their remote.
