# Decisions

Numbered, append-only log of decisions about this repository's content model and tooling. New entries are added with the `/a11y-checklist-log-decision` skill (see [.claude/skills/a11y-checklist-log-decision/SKILL.md](../.claude/skills/a11y-checklist-log-decision/SKILL.md)), which also defines the entry format.

## 1. Every checkpoint applies to at least one audience

**Decision:** Each checkpoint must have at least one `applies_to_*` frontmatter flag set to `"true"`. The validator enforces this.

**Why:** A checkpoint that applies to nobody is either mis-flagged or dead content. The original database allowed NULL flags, which let 7 checkpoints (all from the WCAG 2.2 update) go unflagged unnoticed; their values were reconstructed and confirmed by Josua in July 2026. Alternative rejected: keeping the flags optional — the gap had already gone unnoticed for over a year.

**Watch for:** the `applies_to_*` flags may be merged with the `applicable_to_*` fields from the `feat/add-mobile-pdf-blind-and-videos` branch (see "Open items" in CONTENT-MODEL.md); the rule should survive that merge in equivalent form.

## 2. Track content verification with an optional `verified_at` field

**Decision:** Every content file may carry an optional frontmatter field `verified_at` (`"YYYY-MM-DD"`, after `created_at`), set when the whole file's text, examples, code and screenshots were verified against current standards, browsers and assistive technologies. The validator checks the format, rejects dates in the future, warns when a date is older than two years, and prints the verification progress per language at the end of each run. The verification itself is an item under "Open items" in CONTENT-MODEL.md.

**Why:** The content is years old and parts of it have already proven wrong (an `aria-label` example on a `<p>`). With ~280 files per language, "we'll verify it sometime" is only reliable if progress is visible in the repo. Alternatives rejected: a separate checklist file (drifts from the content, is not checked by the validator); a required field with a warning per unverified file (hundreds of warnings drown the real ones — hence only a summary line); a field on German files only (the English files are paired by id but can be checked or translated at a different time).

**Watch for:** when the per-medium restructure lands, files that get rewritten substantially should be verified in the same pass, so `verified_at` stays meaningful. The two-year staleness threshold (`VERIFIED_STALE_AFTER_DAYS` in tools/validate.rb) can be adjusted once the first full pass is done.

> Refined by #4: checkpoints are verified while they are restructured, not in a separate pass.
> Refined by #6: checkpoints carry one verification date per medium in addition to `verified_at`.
> Refined by #7: the field `verified_at` is named `verified_at_general`.

## 3. Settle the per-medium structure with a pilot before converting the content

**Decision:** Before the checkpoints are converted in bulk — and before mobile and PDF content is written out in full — 2–3 criteria with some of their checkpoints are rewritten in the planned per-medium structure (see "Open items" in CONTENT-MODEL.md), and a standalone document is assembled from them. The result of that pilot settles the final heading structure, which is then logged as its own decision. Mobile and PDF content is written in the new structure, never first in the old one.

**Why:** Writing mobile and PDF in the current structure and restructuring afterwards would write every text twice. The pilot also replaces an effort estimate for all checkpoints × three media with a measured figure, and exposes structural flaws after a handful of files instead of after hundreds. Alternatives rejected: extending mobile and PDF first and restructuring later (double work); converting everything up front without a pilot (a flaw in the structure would surface too late).

**Watch for:** the "Per-medium sections" item stays *planned* until the pilot has been evaluated. The pilot content should be medium- and organization-neutral like all content here, so it stays valid when tailored documents are built from it.

## 4. Verify content while restructuring it

**Decision:** Every checkpoint file that is rewritten for the per-medium structure (or extended with mobile/PDF content) is proofread and checked against current sources in the same pass. Claude does the reading and the online research as a draft; the maintainer confirms the result and only then sets `verified_at` (decision #2). Statements about screen reader or browser behavior that research cannot settle are flagged for a practical test and the file is not marked verified until that test has been done or the statement has been removed. Files the restructure does not touch (e.g. principles, guidelines, tags) get a separate pass later.

**Why:** Each file is rewritten anyway, so reading it a second time in a separate verification pass would double the effort and delay the result. Alternatives rejected: a separate verification pass before the restructure (every file read twice, the restructure waits); setting `verified_at` on research alone (web sources describe standards well but not how a given screen reader or browser actually behaves).

**Watch for:** the restructure becomes slower per file; the pilot (#3) shows by how much. Files that are never touched stay unverified — the progress line of the validator makes that visible.
> Refined by #7: the field `verified_at` is named `verified_at_general`.

## 5. Assemble standalone documents with Pandoc, not with AI

**Decision:** Standalone documents (per medium, and later tailored to an organization) are assembled by a deterministic script that selects the relevant sections from the Markdown sources and converts them with Pandoc (HTML, Word, PDF as needed). They are not written or rewritten by AI, and they are not edited by hand after generation. The generated formats must themselves be accessible (heading structure, tagged PDF).

**Why:** The team has long experience with Pandoc. A generated document can be regenerated at any time, so the sources stay the only place where content is edited; edits in a generated document, or in an AI-written one, would be lost on the next run. Alternatives rejected: AI-generated standalone documents (not reproducible, differences between runs); hand-maintaining one corpus per medium (three corpora drifting apart).

**Watch for:** the script does not exist yet; the pilot (#3) should produce a first version. How organization-specific additions are merged in at build time is not decided yet — they must not live in this repository.

## 6. Verify each medium separately on checkpoints

**Decision:** Checkpoints may carry `verified_at_web`, `verified_at_mobile` and `verified_at_pdf` (`"YYYY-MM-DD"`, optional, only on checkpoints) in addition to `verified_at`. On a checkpoint, `verified_at` covers only the shared sections (`Beschreibung`, `Prüfmethode (in Kürze)`, `Details zum blinden Testen`); each medium field covers that medium's section. A medium the checkpoint doesn't apply to gets no date. All fields share the format, the future-date error and the two-year staleness warning of #2; the validator prints a progress line per field and language, counting a medium only over the checkpoints applicable to it.

**Why:** Different people verify the media, and a single date would either wait for the slowest or claim more than anyone checked. The fields also match the planned `## Web`, `## Mobile`, `## PDF` sections, which stay the unit of work when the per-medium structure is in place. Alternatives rejected: one `verified_at` for the whole checkpoint (hides who checked what); a nested `verified_at: {web: …}` map (the frontmatter schema is flat, quoted strings); medium fields on criteria too (criteria only get optional medium sections in the planned structure, so this can follow when they exist).

**Watch for:** decision #4 says "sets `verified_at`" for a rewritten checkpoint — for a checkpoint that now means the shared date plus the date of each medium actually checked. If the final per-medium structure from the pilot (#3) differs from the planned one, adjust the field list and the section mapping above. Applicability currently comes from the `applicable_to_*` flags; when the structure replaces them, the progress count has to follow ("Nicht anwendbar" sections instead of flags).
> Refined by #7: the field `verified_at` is named `verified_at_general`.

## 7. Name the general verification date `verified_at_general`

**Decision:** The frontmatter field `verified_at` (#2) is named `verified_at_general`. Its meaning and rules are unchanged; it sits beside `verified_at_web`, `verified_at_mobile` and `verified_at_pdf` (#6). The plain name `verified_at` is no longer allowed.

**Why:** With per-medium fields (#6), a bare `verified_at` reads like the overall verification state of the file, although on checkpoints it covers only the shared sections. The suffix makes the scope visible in the field name and keeps all four fields sortable together. Alternative rejected: keeping `verified_at` for backward compatibility — no file uses it yet, so renaming costs nothing now and would cost a migration later.

**Watch for:** earlier entries still say `verified_at`; read it as `verified_at_general` (notes under #2, #4 and #6).
