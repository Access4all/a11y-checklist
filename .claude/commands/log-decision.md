---
description: Append a numbered entry to docs/decisions.md and propagate it to affected docs
---

Log a new decision in `docs/decisions.md`: $ARGUMENTS

1. Read `docs/decisions.md`; the new entry number is the highest existing one + 1. The log is append-only — never rewrite an existing entry. If this decision changes an earlier one, add `> Superseded by #N: …` (or `> Refined by #N: …`) directly under the old entry.
2. Challenge before recording: is there a simpler alternative? Does it conflict with an existing entry or an item under "Open items" in `CONTENT-MODEL.md`? Is there a hidden cost? Raise concerns first; if overruled, record the decision as made and do not relitigate it later.
3. Append the entry in house format:
   - `## <n>. <assertive title>`
   - `**Decision:** …`
   - `**Why:** …` — include alternatives considered and rejected, so they are not re-explored later.
   - `**Watch for:** …` — only when there is a real implication or revisit trigger.
4. Propagate in the same pass: update README.md, CLAUDE.md, CONTENT-MODEL.md (including its "Open items" section — graduate or delete an item this decision resolves), and tools/validate.rb wherever the decision makes them stale. A decision that changes the rules but leaves the docs or validator describing the old rules has already drifted.
5. Report which files were updated and which were checked and unaffected.
