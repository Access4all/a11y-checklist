---
description: Record a decision as a new file in docs/decisions/ and propagate it to affected docs
---

Log a new decision in `docs/decisions/`: $ARGUMENTS

1. Read the existing entries in `docs/decisions/`. The new entry is a new file `docs/decisions/YYYY-MM-DD-short-slug.md` (today's date, a slug of a few words from the title). Don't number entries and don't list them anywhere: a shared counter or list makes parallel branches conflict (see `docs/decisions/2026-10-29-one-file-per-decision.md`). The log is append-only — never rewrite an existing entry. If this decision changes an earlier one, add `> Superseded by [<new file>](<new file>): …` (or `> Refined by …`) directly under the old entry's title.
2. Challenge before recording: is there a simpler alternative? Does it conflict with an existing entry or an item under "Open items" in `CONTENT-MODEL.md`? Is there a hidden cost? Raise concerns first; if overruled, record the decision as made and do not relitigate it later.
3. Write the entry in house format:
   - `# <assertive title>`
   - `**Decision:** …`
   - `**Why:** …` — include alternatives considered and rejected, so they are not re-explored later.
   - `**Watch for:** …` — only when there is a real implication or revisit trigger.
4. Propagate in the same pass: update README.md, CLAUDE.md, CONTRIBUTING.md, CONTENT-MODEL.md (including its "Open items" section — graduate or delete an item this decision resolves), and tools/validate.rb wherever the decision makes them stale, referring to the decision by its file name. A decision that changes the rules but leaves the docs or validator describing the old rules has already drifted.
5. Report which files were updated and which were checked and unaffected.
