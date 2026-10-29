# Content model

This repository is the single source of truth for the A11y Checklist and Test Specification. The content was originally maintained in a relational database; the rules that database enforced are documented here and checked automatically by [tools/validate.rb](tools/validate.rb).

## Overview

```
{de,en}/
├── wcag/
│   └── <slug>/                  ← principle, guideline, or criterion (flat, one level)
│       ├── README.md
│       └── <slug>/              ← checkpoint (criteria only)
│           ├── README.md
│           └── images/*.png
└── tags/
    └── <slug>/
        └── README.md
```

There are five content types. The three WCAG levels (principle, guideline, criterion) all live as direct children of `wcag/` — the level is derived from the numbering in the folder name:

| Type | Folder name pattern | Example |
|---|---|---|
| Principle | `<n>-<slug>` | `1-wahrnehmbar` |
| Guideline | `<n>.<n>-<slug>` | `1.1-textalternativen` |
| Criterion | `<n>.<n>.<n>[a-z]?-<slug>` | `1.1.1-nicht-text-inhalt`, `1.3.1a-ueberschriften-struktur` |
| Checkpoint | `<slug>` inside a criterion folder | `1.1.1-nicht-text-inhalt/informative-grafiken` |
| Tag | `<slug>` inside `tags/` | `desktop-screenreader` |

A letter suffix on a criterion number (`1.3.1a`–`1.3.1e`, `4.1.2a`) marks our own **split** of one official WCAG criterion into several more digestible parts.

## Identity and translations

- Every content file has a numeric `id` (a string in the frontmatter). Ids are unique **per content type** — a tag and a criterion may share the same number, so an id is only meaningful together with its type.
- The German and English version of the same content share the same `(type, id)` pair. **Folder names may differ between languages** (e.g. `de/tags/hamburger-menue` ↔ `en/tags/hamburger-menu`), so pairing always goes via id, never via path.
- Every `de` file must have an `en` counterpart and vice versa. (The Test Specification is not yet translated — English checkpoint/tag files may still contain German text, but the files must exist.)

## Frontmatter

All values are quoted strings, including booleans and numbers (a legacy of the database export — kept for consistency). `created_at` uses the format `YYYY-MM-DD HH:MM:SS`.

### Principle

```yaml
id: "62"
created_at: "2016-01-12 15:09:33"
```

### Guideline

```yaml
id: "63"
parent_id: "62"        # id of the containing principle
created_at: "..."
```

### Criterion

```yaml
id: "1"
parent_id: "63"        # id of the containing guideline
wcag_version: "2.0"    # "2.0" | "2.1" | "2.2" — omitted on split criteria (letter suffix)
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/non-text-content.html"
created_at: "..."
```

Split criteria (`1.3.1a` etc.) differ in two ways: their `parent_id` points at the **criterion they split** (e.g. `1.3.1a` → id of `1.3.1`), not at the guideline, and they carry no `wcag_version`.

### Checkpoint

```yaml
id: "1"
wcag_criterion_id: "1" # must equal the id of the criterion folder it sits in
applies_to_pdf: "true"             # all five applies_to_* flags: "true" | "false"; at least one must be "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"          # medium applicability: "true" | "false"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"             # can be tested by a blind tester: "true" | "false"
created_at: "..."
```

### Tag

```yaml
id: "63"
parent_id: "62"        # id of the parent tag; "" (empty) for root tags
created_at: "..."
```

Tags form a tree: root tags (e.g. `werkzeuge`, `techniken`, `aria-attribute`) have an empty `parent_id`; all others point to another tag's id.

Tag names and descriptions were never localized in the original database (a single field served both languages), so the English tag descriptions only say "🇩🇪 Currently only available in German." until they are actually translated.

### Verification dates

```yaml
verified_at_general: "2026-11-09"  # optional, all types; "YYYY-MM-DD", placed after created_at
verified_at_web: "2026-11-09"      # optional, checkpoints only: the medium's own verification
verified_at_mobile: "2026-11-16"
verified_at_pdf: "2026-11-23"
```

All are optional and record the day on which a person checked the text, examples, code and screenshots against current standards, browsers and assistive technologies (see "Content verification" under "Open items"). Set a date only after verifying everything it covers; edits that don't re-verify leave it alone.

- `verified_at_general` covers the whole file for principles, guidelines, criteria and tags. On checkpoints it covers the shared parts (`Beschreibung`, `Prüfmethode (in Kürze)`, `Details zum blinden Testen`).
- `verified_at_web`, `verified_at_mobile` and `verified_at_pdf` cover that medium's section (currently `Prüfmethode für <Medium>`, after the per-medium restructure `## <Medium>` with its screenshots). Different people verify different media, so each medium has its own date. Leave it out for a medium the checkpoint doesn't apply to.

A date in the future is an error; a date older than two years yields a warning. The validator ends every run with a progress line per field and language (e.g. `verified_at_web (checkpoints applicable to web): de 12/114, en 0/114`). Background: decisions #2 and #6 in [docs/decisions.md](docs/decisions.md).

## Body conventions

- The body starts with exactly one H1, prefixed by the type's emoji:
  - `# 📜 …` for principles, guidelines, and criteria (e.g. `# 📜 1.1.1 Nicht-Text-Inhalt - A`, `# 📜 Prinzip 1: Wahrnehmbar`, `# 📜 Guideline 1.1: Text Alternatives`)
  - `# ✅ …` for checkpoints
  - `# 🏷️ …` for tags
- Criterion H1s end with the conformance level (`- A` or `- AA`); split criteria carry no level. (In the original database the level was a dedicated field; since the export it lives only in this H1 suffix.)
- H2 sections are **fixed per content type** (they render database fields): only the sections below may appear, each at most once, in exactly this order. Sections marked *(optional)* correspond to nullable database fields and may be omitted; all others are required. Deeper headings (H3+) are free-form.
  - Criterion (de): `Verstehen (in Kürze)`, `Verstehen (ausführlich)`, `Beispiele` *(optional)*, `✅ Checkpoints`, `Referenzen (öffentlich)` *(optional)*, `Referenzen (intern)` *(optional)*
  - Criterion (en): `Understanding (short)`, `Understanding (long)`, `Examples` *(optional)*, `✅ Checkpoints`, `References public` *(optional)*, `References internal` *(optional)*
  - Checkpoint (de): `Beschreibung`, `Prüfmethode (in Kürze)`, `Prüfmethode für Web (ausführlich)`, `Prüfmethode für Mobile (Ergänzungen zu Web)`, `Prüfmethode für PDF (Ergänzungen zu Web)`, `Details zum blinden Testen`, `Screenshots typischer Fälle`
  - Checkpoint (en): `Description`, `Method`, `Details on web applicability (specific test steps)`, `Details on mobile applicability (additions to web)`, `Details on PDF applicability (additions to web)`, `Blind testable details`, `Screenshots`
  - Tag: `Beschreibung` / `Description`
  - Principles and guidelines have no H2 sections at all.
- Markdown uses default syntax only (no extensions).
- Every file ends with a newline.

## Links

| Kind | Format | Used for |
|---|---|---|
| Internal, absolute | `/de/wcag/<slug>` or `/de/tags/<slug>` (same for `en`) | Cross-references between criteria, checkpoints, and tags |
| Internal, relative | `<checkpoint-slug>` | Criterion → its own checkpoints |
| Parent | `..` | Checkpoint → its criterion |
| Image | `images/<file>.png` | Screenshots, from the checkpoint's own `images/` folder |
| External | `https://…` | WCAG, tools, resources |

Absolute internal links point at the **folder** (no trailing `/README.md`, no `.md` suffix). Links across languages are not used; each language links within itself.

The checklist covers only level A and AA criteria. References to level AAA criteria are external links to the W3C Understanding page, without the 📜 prefix that marks internal criterion links (e.g. `[2.4.13 Fokus-Erscheinungsbild](https://www.w3.org/WAI/WCAG22/Understanding/focus-appearance.html)`).

## Files and naming

- Folder slugs are lowercase `a-z`, `0-9`, `.` (criterion numbers only), and `-`. No leading/trailing dashes. Umlauts are transliterated (German: `ä→ae`, `ö→oe`, `ü→ue`; English folder names simply drop the diacritic: `menü→menu`).
- The only Markdown file in a content folder is `README.md`.
- Screenshots are PNG, highly compressed, and live in `images/` directly under the checkpoint that references them. Every image on disk must be referenced; every reference must resolve.

## Validation

```sh
ruby tools/validate.rb              # validate everything
ruby tools/validate.rb de/wcag/…    # validate specific files/folders only
```

The validator enforces everything above that can be checked mechanically (frontmatter schema, id uniqueness, reference integrity, de/en parity, link and image resolution, naming, H1 conventions, H2 section sets and order). It also reports the progress of the content verification (see `verified_at_general`). It exits non-zero if errors are found; warnings don't fail the run. CI runs it on every push and pull request.

## Open items

Known gaps and planned changes:

- **Content verification:** the existing texts, examples and code samples are years old; standards, browsers, assistive technologies and best practices may have changed (e.g. an `aria-label` example on a `<p>` turned out to be invalid). Plan: start with an inventory of what can go stale (code samples, browser/screen reader behavior, tool menus such as Acrobat, WCAG and technique references), then verify in stages, riskiest content first. Checkpoints are verified while the planned per-medium restructure (decision #3) rewrites them, so nothing is read or written twice: Claude proofreads and researches, the maintainer confirms and sets `verified_at_general`; claims about screen reader or browser behavior that research can't settle are flagged for a practical test (decision #4). Files the restructure doesn't touch (principles, guidelines, criteria, tags) get a separate pass. Progress is tracked with `verified_at_general` and, per medium, `verified_at_web|mobile|pdf` on checkpoints (decisions #2, #6). Start: the week of 2026-11-02.
- **Tags:** the concept is being rethought; don't extend tags for now. They are meant as a place for information that checkpoints reference repeatedly — in an exported version of the checklist, such information could be shown in a dialog inside a checkpoint. The database's `tags.category` field was not exported; a CSV dump exists to backfill it once the concept is settled.
- **Per-medium sections (planned, not yet confirmed):** the goal is to generate complete standalone documents per medium (web, mobile, PDF) from the shared parts plus that medium's sections, so that e.g. a PDF team doesn't have to read the web content first.
  - Order of work: a pilot with 2–3 criteria and some of their checkpoints comes first and settles the final structure; only then are the remaining checkpoints converted and mobile/PDF content written out (decision #3). The documents are assembled by a script with Pandoc, not by AI (decision #5).
  - Organization-specific examples (planned, not yet confirmed) are never added here but in a private copy of this repository that is kept in sync with it. There, each checkpoint gets one additional section below the general examples; its heading and its position relative to the per-medium sections are still open. The validator and the assembly script then have to allow this optional section in such copies. The order in an exported document (e.g. organization-specific examples first) is a choice of the build, not of the source.
  - Checkpoints keep the general sections `Beschreibung`, `Prüfmethode (in Kürze)` and `Details zum blinden Testen`, and always have three sections `## Web`, `## Mobile` and `## PDF` (same names in English), each holding that medium's test method and screenshots.
  - A medium that doesn't apply gets `**Nicht anwendbar:** <reason>` (English: `**Not applicable:** <reason>`) as its only content. Generic statements without a real reason (e.g. "Für PDFs nicht relevant.") become `TODO`; the validator warns about every `TODO`.
  - Criteria may get optional `## Web`, `## Mobile` and `## PDF` sections for medium-specific text; whether a criterion applies to a medium follows from its checkpoints.
  - These sections replace the `applicable_to_*` flags. Of the `applies_to_*` flags, `applies_to_pdf` (an imprecise predecessor of `applicable_to_pdf` that disagrees with it on 29 checkpoints), `applies_to_development` and `applies_to_quality_assurance` (true on nearly every checkpoint) are removed; `applies_to_design` and `applies_to_content` stay for filtering by role. This replaces the at-least-one rule of decision #1.
- **Validator test:** before the validator changes substantially (e.g. for the planned per-medium sections), add a test that checks every rule still fires — a run over the real content only shows that valid content passes. A draft is in the closed pull request #4 (`tools/validate_test.rb`).
