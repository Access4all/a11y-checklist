---
name: a11y-checklist-alt-text
description: Use when asked for alt text for the image reference on the currently selected line. Writes concise alt text and moves the image into an images/ folder next to the referencing file
---

Fix the image reference on the line currently selected in the IDE (provided as the selection context of this conversation). Work **only** on that line — do not scan other lines or files for further image references. If there is no selection, or the selected line contains no `![…](…)` image reference, say so and stop.

For that image reference:

1. If the image file is not in the `images/` folder next to the Markdown file containing the reference (i.e. `<folder of the .md file>/images/`), move it there (`git mv` when tracked, plain `mv` otherwise), creating the folder if needed, and update the reference's path to `images/<file>`. Also fix any other references to the image at its old location (search the repo for the old path).
2. Open and actually look at the image, then write the alt text as **one short phrase**: the image type plus its key point — e.g. `Beispiel-Bild auf WebAIM mit eingeblendeten Alternativtexten (Web Developer Toolbar)`. Write it in the language of the containing file (`de/` German, `en/` English). No field-by-field enumeration of what's visible, no bare labels like "screenshot".
3. If the alt text (or surrounding prose) quotes identifiers shown in the image, verify them character by character against the image and the ids used elsewhere in the docs — OCR'd identifiers often contain lookalike mistakes (`l` vs `I`, `0` vs `O`).
4. Run `ruby tools/validate.rb <folder of the .md file>` — it verifies the reference resolves and the image is a referenced PNG in the right place.
5. Report: old location → new location, and the alt text written.
