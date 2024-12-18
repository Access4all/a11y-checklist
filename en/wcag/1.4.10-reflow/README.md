---
id: "91"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/reflow.html"
created_at: "2019-11-10 20:19:46"
---

# 📜 1.4.10 Reflow - AA

## Understanding (short)

Content must adapt to the **viewport minimum dimensions** (so-called **reflow**). This enables people with visual impairments to use all content even at high zoom levels without having to scroll in more than one direction.

## Understanding (long)

People with visual impairments often work with low screen resolutions and/or a high zoom factor. Web content must therefore also be displayed correctly under these circumstances (without overlapping or other disruptive effects), whereby scrolling is only permitted in one direction (either horizontally or vertically, but not both). See also [📜-1.3.4 Orientation](/en/wcag/1.3.4-orientation).

The specified minimum resolution for this is `320`x`256` CSS pixels. A typical problem is words that are too long, which lead to a scrolling requirement in several directions or cause overlaps.

**Exceptions:** Some media are designed to be unrestricted in terms of both height and width, e.g. images, maps, diagrams, videos, games, data tables and certain web applications. Here, a horizontal toolbar must remain visible and scrolling in two directions is permitted.

### Responsibilities

- The design team defines the content in such a way that the reflow is taken into account.
- The development team correctly implements the specifications defined by the design team and ensures that the reflow works as prescribed.
- The content managers check that the content created is displayed correctly in the minimum viewport dimensions.

## ✅ Checkpoints

- [✅ Viewport minimum dimensions](viewport-minimum-dimensions)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#reflow>
- <https://www.w3.org/WAI/WCAG22/quickref/#reflow>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C32>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C31>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C33>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C38>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR34>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G206>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C34>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C37>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-10-umbruch-der-inhalte-reflow/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-10-inhalte-brechen-um>

### Weiteres
- <https://www.wcag.com/designers/1-4-1-reflow/>
- <https://www.digitala11y.com/understanding-sc-1-4-10-reflow/>
- <https://www.boia.org/wcag2/cp/1.4.10>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1410_Reflow>
- <https://www.tpgi.com/going-with-the-pdf-reflow/>
