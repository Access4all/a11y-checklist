---
description: (Disabled until mid-January 2027) Push local main commits directly to origin, bypassing branch protection if a ruleset requires a PR, then restore protection
---

Push the local main commits directly to origin: $ARGUMENTS

**Disabled until mid-January 2027:** `main` is frozen (see "Branches" in CLAUDE.md). Stop and point to `interim-main` instead, unless Josua explicitly confirms this specific push in the current conversation.

This command exists for small changes (typo/doc fixes) where a PR is overhead. Because such a push skips review, the local validation run below is mandatory.

1. Preconditions — abort with an explanation if any fails:
   - Current branch is `main` (`git branch --show-current`).
   - There is at least one commit to push and no divergence: `git fetch origin && git status` must show "ahead of 'origin/main'", not "diverged".
   - Everything intended for the push is committed. Unrelated uncommitted changes are fine — they stay behind — but confirm nothing staged is half-done.
2. Run `ruby tools/validate.rb`. It must report 0 errors. Otherwise stop and report — do not push.
3. Check whether a branch ruleset protects `main`: `gh api repos/{owner}/{repo}/rulesets --jq '.[] | {id, name}'`. If no ruleset requires a pull request (currently the repository has none), just `git push` and skip the remaining bypass steps.
4. Enable the bypass for repository admins on that ruleset:
   ```
   gh api -X PUT repos/{owner}/{repo}/rulesets/<id> --input - <<'EOF'
   {"bypass_actors":[{"actor_id":5,"actor_type":"RepositoryRole","bypass_mode":"always"}]}
   EOF
   ```
5. `git push` — expect a `remote: Bypassed rule violations` notice.
6. **Always** revert the bypass, even if the push failed:
   ```
   gh api -X PUT repos/{owner}/{repo}/rulesets/<id> --input - <<'EOF'
   {"bypass_actors":[]}
   EOF
   ```
   Then verify: the ruleset's `bypass_actors` must be empty. If the revert call fails, retry it and do not report success until protection is confirmed restored.
7. Report: pushed commit range, validation result, and confirmation that the bypass was removed (or that no ruleset applied).
