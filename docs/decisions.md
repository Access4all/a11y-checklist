# Decisions

Numbered, append-only log of decisions about this repository's content model and tooling. New entries are added with the `/log-decision` command (see [.claude/commands/log-decision.md](../.claude/commands/log-decision.md)), which also defines the entry format.

## 1. Every checkpoint applies to at least one audience

**Decision:** Each checkpoint must have at least one `applies_to_*` frontmatter flag set to `"true"`. The validator enforces this.

**Why:** A checkpoint that applies to nobody is either mis-flagged or dead content. The original database allowed NULL flags, which let 7 checkpoints (all from the WCAG 2.2 update) go unflagged unnoticed; their values were reconstructed and confirmed by Josua in July 2026. Alternative rejected: keeping the flags optional — the gap had already gone unnoticed for over a year.

**Watch for:** the `applies_to_*` flags may be merged with the `applicable_to_*` fields from the `feat/add-mobile-pdf-blind-and-videos` branch (see "Open items" in CONTENT-MODEL.md); the rule should survive that merge in equivalent form.
