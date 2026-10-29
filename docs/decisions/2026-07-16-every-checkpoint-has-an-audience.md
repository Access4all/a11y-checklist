# Every checkpoint applies to at least one audience

Formerly decision #1 in `docs/decisions.md`; commit 0b6a595 refers to it by that number.

**Decision:** Each checkpoint must have at least one `applies_to_*` frontmatter flag set to `"true"`. The validator enforces this.

**Why:** A checkpoint that applies to nobody is either mis-flagged or dead content. The original database allowed NULL flags, which let 7 checkpoints (all from the WCAG 2.2 update) go unflagged unnoticed; their values were reconstructed and confirmed by Josua in July 2026. Alternative rejected: keeping the flags optional — the gap had already gone unnoticed for over a year.

**Watch for:** the `applies_to_*` flags may be merged with the `applicable_to_*` fields from the `feat/add-mobile-pdf-blind-and-videos` branch (see "Open items" in CONTENT-MODEL.md); the rule should survive that merge in equivalent form.
