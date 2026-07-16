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
applies_to_pdf: "true"             # all five flags: "true" | "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "..."
```

### Tag

```yaml
id: "63"
parent_id: "62"        # id of the parent tag; "" (empty) for root tags
created_at: "..."
```

Tags form a tree: root tags (e.g. `werkzeuge`, `techniken`, `aria-attribute`) have an empty `parent_id`; all others point to another tag's id.

Tag names and descriptions were never localized in the original database (a single field served both languages), so the English tag files duplicate the German content until they are actually translated.

## Body conventions

- The body starts with exactly one H1, prefixed by the type's emoji:
  - `# 📜 …` for principles, guidelines, and criteria (e.g. `# 📜 1.1.1 Nicht-Text-Inhalt - A`, `# 📜 Prinzip 1: Wahrnehmbar`, `# 📜 Guideline 1.1: Text Alternatives`)
  - `# ✅ …` for checkpoints
  - `# 🏷️ …` for tags
- Criterion H1s end with the conformance level (`- A` or `- AA`); split criteria carry no level. (In the original database the level was a dedicated field; since the export it lives only in this H1 suffix.)
- H2 sections are **fixed per content type** (they render database fields): only the sections below may appear, each at most once, in exactly this order. Sections marked *(optional)* correspond to nullable database fields and may be omitted; all others are required. Deeper headings (H3+) are free-form.
  - Criterion (de): `Verstehen (in Kürze)`, `Verstehen (ausführlich)`, `Beispiele` *(optional)*, `✅ Checkpoints`, `Referenzen (öffentlich)` *(optional)*, `Referenzen (intern)` *(optional)*
  - Criterion (en): `Understanding (short)`, `Understanding (long)`, `Examples` *(optional)*, `✅ Checkpoints`, `References public` *(optional)*, `References internal` *(optional)*
  - Checkpoint (de): `Beschreibung`, `Prüfmethode (in Kürze)`, `Prüfmethode für Web (ausführlich)`, `Screenshots typischer Fälle`
  - Checkpoint (en): `Description`, `Method`, `Details on web applicability (specific test steps)`, `Screenshots`
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

## Files and naming

- Folder slugs are lowercase `a-z`, `0-9`, `.` (criterion numbers only), and `-`. No leading/trailing dashes. Umlauts are transliterated (German: `ä→ae`, `ö→oe`, `ü→ue`; English folder names simply drop the diacritic: `menü→menu`).
- The only Markdown file in a content folder is `README.md`.
- Screenshots are PNG, highly compressed, and live in `images/` directly under the checkpoint that references them. Every image on disk must be referenced; every reference must resolve.

## Validation

```sh
ruby tools/validate.rb              # validate everything
ruby tools/validate.rb de/wcag/…    # validate specific files/folders only
```

The validator enforces everything above that can be checked mechanically (frontmatter schema, id uniqueness, reference integrity, de/en parity, link and image resolution, naming, H1 conventions, H2 section sets and order). It exits non-zero if errors are found; warnings don't fail the run. CI runs it on every push and pull request.

## Open items

Known gaps versus the original database, to be resolved:

- **Empty `applies_to_*` flags:** 7 checkpoints have empty values (never set in the database). Once they are filled in, add a validator rule that every checkpoint has at least one `applies_to_*` flag set to `"true"`.
- **Tag categories:** the database's `tags.category` field was not exported. A CSV dump exists to backfill it as a frontmatter field.
- **`applies_to_pdf` vs `applicable_to_pdf`:** the branch `feat/add-mobile-pdf-blind-and-videos` introduces `applicable_to_web/mobile/pdf` (medium applicability) alongside the existing `applies_to_pdf` (audience flag) — two near-identical names for different concepts. To be resolved when that branch lands, ideally by merging them into a single item. The branch's new frontmatter keys and H2 sections must be added here and to the validator at the same time.
