---
id: "14"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/use-of-color.html"
created_at: "2015-08-04 14:36:00"
---

# 1.4.1 Use of Color - A

## Understanding (short)

**Information** needs to be communicated in a way that can be understood **independent of colour vision**. This allows people without colour vision to process all the information.

## Understanding (long)

If visual information is only conveyed via colour, people with colour vision deficiency may not be able to perceive these differences (e.g. input fields highlighted in red to indicate incorrect input; but also links within continuous text or pie charts whose individual parts can only be identified by colour).

This can be avoided by providing an additional visual stimulus to convey the information, such as bold type or underlining. Other options include the use of different symbols or additional text.

We also recommend that status changes (such as hover and focus) are not only indicated by colour changes, but also by additional borders, for example.

**Note:** This success criterion explicitly addresses colour perception. Other forms of perception are addressed in guideline 📜-1.3.

**Important:** If colour differentiation alone is nevertheless to be used (e.g. for links in a text), the elements to be differentiated must have a contrast ratio of at least `3:1` to the surroundings (see 📜-1.4.3). However, it is difficult to achieve such a differentiation using contrasts alone, as the various contrast requirements (between link and background, between continuous text and background and between link and continuous text) severely limit the possibilities.

### Responsibilities

- The design team defines elements so that they can also be understood without colour vision.
- The development team correctly implements the specifications defined by the design team.
- The content managers design content in such a way that it can also be understood without colour vision.

## Examples

- An active menu item in a navigation is highlighted not only in colour, but also by underlining.
- Pie slices in a pie chart can be linked to the corresponding legend not only by their background colour, but also by another visual feature (e.g. individual hatching).

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#use-of-color>
- <https://www.w3.org/WAI/WCAG22/quickref/#use-of-color>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G14>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G205>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G182>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G183>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G111>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G14>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-1-nutzung-von-farbe/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-1-ohne-farben-nutzbar>

### Weiteres
- <https://www.wcag.com/designers/1-4-1-use-of-color/>
- <https://www.wuhcag.com/use-of-colour/>
- <https://www.digitala11y.com/understanding-sc-1-4-1-use-of-color/>