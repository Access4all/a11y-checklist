---
id: "16"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 1.4.3 Contrast (Minimum) - AA

## Understanding (short)

**Texts and symbols** must stand out from the background **through sufficient contrast**. This enables people with visual impairments to recognize and read text.

## Understanding (long)

People with visual impairments and ametropia need elements to stand out clearly from the background. Therefore, texts and informative elements (such as symbols) must have a sufficiently high contrast value to the background.

All content texts and control elements are relevant. Their state changes (such as hover and focus) must also meet the requirements; however, there are no strict contrast requirements for differentiating between them at level AA.

Required minimum contrast:

- **Normal font:** Contrast ratio of at least `4.5:1`.
- **Large font** (from `18pt` or `14pt` + bold, corresponds to 24px or 18.5px bold): Contrast ratio of at least `3:1`

The color code stored in the CSS is decisive, not pixel colors that may have been changed by anti-aliasing or similar.

If a placeholder (`placeholder` attribute) provides additional information that is not otherwise available, then it must have sufficient contrast. This applies, for example, in the case of format specifications, if it is specified that a zip code, city, order number, etc. can be entered and searched for in a search field. If the placeholder is purely redundant, then no contrast requirements apply to it.


**Important:** The color tone plays no role in the calculation of contrast. Thus, for example, a rich green and a rich red may contrary to expectations show too little contrast because people who do not see colors perceive both colors in the same rich gray. On the other hand, a rich green and a weak red are perceived as a rich gray and a weak gray, and the contrast is guaranteed accordingly.

**Exceptions:** No contrast requirements apply to logos or inactive elements (e.g. non-selectable buttons). The same applies to decorative or redundant elements (e.g. a shopping cart symbol in a link labeled “shopping cart”).

### Responsibilities

- The design team defines a palette of foreground and background colors that provide sufficient contrast in the required combinations within the framework of the given design.
- The development team correctly implements the specifications defined by the design team.
- The content managers design content in such a way that it has sufficient contrast.
- Clients should be aware that high-contrast designs (even beyond the minimum requirements) are an advantage for all sighted people (e.g. for mobile use).

## Examples

- Contrast analysis: foreground white (HEX #FFFFFF), background blue (HEX #0064B4). Results: Contrast ratio is `6.0:1` and fulfills the requirements for normal text at level AA as well as the requirements for large text at levels AA and AAA.
- The colors used can be measured and adjusted with the “Colour Contrast Analyser”. There are options for pipette function, HEX code input and selection from a color palette.

## ✅ Checkpoints

- [✅ Contrast ratio for text](contrast-ratio-for-text)
- [✅ Contrast of interactive text elements](contrast-of-interactive-text-elements)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#contrast-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#contrast-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G148>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G174>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G145>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-3-kontraste-von-texten/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-3-kontraste-von-texten-ausreichend>

### Weiteres
- <https://www.wcag.com/designers/1-4-3-color-contrast/>
- <https://www.digitala11y.com/understanding-sc-1-4-3-contrast-minimum/>
- <https://www.boia.org/wcag2/cp/1.4.3>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/>