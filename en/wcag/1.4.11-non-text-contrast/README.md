---
id: "92"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html"
created_at: "2019-11-10 20:20:15"
---

# 📜 1.4.11 Non-Text Contrast - AA

## Understanding (short)

**Control elements** (e.g. text fields, radio buttons, checkboxes, switches, tabs) and **informative graphic elements** (e.g. lines of a diagram) must stand out from the background in colour with **sufficient contrast**. This enables people with visual impairments to perceive them.

## Understanding (long)

People with visual impairments and defective vision need elements to stand out clearly from the background. Therefore, control elements and informative graphic elements must have a sufficiently high contrast value to the background.

Every visual cue that is necessary for perception and operation, especially for interpreting the status of an element, must have a contrast value of at least 3:1. This applies, for example, to the boundaries of form fields, drop-down indicators, check marks in a checkbox, etc. If the colour of a control element also changes (e.g. on focus or activation), then this colour must also meet the minimum contrast requirement. The hover state of an element must be indistinguishable from the standard state.

For switches, it is recommended that the clickable area is also labelled with sufficient contrast. As long as a button is clearly identifiable as such by its position, font, etc., high-contrast labelling is sufficient. For text fields with high-contrast placeholder text, there are no contrast requirements for the field border lines.



For graphic elements, sufficient contrast means that every visual cue required for perception and interpretation must have a contrast value of at least ‘3:1’. This means, for example, curves and lines of a diagram, symbols contained therein, labelling, etc.

**Note:** The minimum contrast requirements only apply to meaningful, informative graphic elements; purely decorative graphics are therefore not meant. See also [📜-1.4.3 Contrast (Minimum)](/en/wcag/1.4.3-contrast-minimum) in this regard.

**Exception:** Excluded are inactive control elements (`disabled` attribute). However, we recommend refraining from using `disabled` for switches in particular, as this has negative side effects (e.g. the switch can then no longer be focussed with the keyboard, see [📜-2.1.1 Keyboard](/en/wcag/2.1.1-keyboard)).

**Tip:** Break down complex graphics into their smallest meaningful parts. Check the contrast between each part and the adjacent colours.

### Responsibilities

- The design team defines a palette of foreground and background colours that provide sufficient contrast in the required combinations.
- The development team correctly implements the specifications defined by the design team.
- The content managers design content in such a way that it has sufficient contrast.
- Clients should be aware that high-contrast designs (even beyond the minimum requirements) are an advantage for all sighted people.

## ✅ Checkpoints

- [✅ Contrast ratio of control elements](contrast-ratio-of-control-elements)
- [✅ Contrast for informative graphic elements](contrast-for-informative-graphic-elements)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#non-text-contrast>
- <https://www.w3.org/WAI/WCAG22/quickref/#non-text-contrast>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G195>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G174>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G207>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G209>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-11-nicht-text-kontrast/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-11-kontraste-von-grafiken-und-grafischen-bedienelementen-ausreichend>

### Weiteres
- <https://www.wcag.com/designers/1-4-11-non-text-contrast/>
- <https://www.digitala11y.com/understanding-sc-1-4-11-non-text-contrast/>
- <https://www.boia.org/wcag2/cp/1.4.11>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1411_Non-Text_Contrast>