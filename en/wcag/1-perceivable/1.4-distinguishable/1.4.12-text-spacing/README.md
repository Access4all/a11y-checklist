---
id: "93"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/text-spacing.html"
created_at: "2019-11-10 20:20:34"
---

# 1.4.12 Text Spacing - AA

## Understanding (short)

It must be possible to **adjust the spacing of text** without losing content or functionality. This allows people with visual impairments or cognitive disabilities to improve the readability of text (e.g. by using their own CSS).

## Understanding (long)

People with visual impairments and cognitive disabilities need to be able to improve the readability of texts for themselves by applying tools such as their own bookmarklets or style sheets to a website.

For text content, the spacing of lines, paragraphs, words and letters must be adjustable to the following values (or already have these values) without losing functionality or content due to display problems (e.g. overlapping text, truncated text, text that is no longer displayed). Important here:

- Line height (`line-spacing`) can be changed to at least `1.5` times the font size (`font-size`).
- Spacing after paragraphs (`margin`) can be changed by at least `2` times the font size.
- Word spacing (`word-spacing`) can be changed by at least `0.16` times the font size.
- Character spacing (`letter-spacing`) can be changed by at least `0.12` times the font size.


**Note:** This only applies to ‘real’ text; texts on graphics are not affected. For requirements relating to images of a text, see 📜-1.4.5.

**Important:** The requirement does not demand that the specified change options be implemented in the programming (e.g. using a style switcher). It only requires that subsequent adjustments made in the browser do not lead to text being cut off or overlapped or to a loss of functionality.

**Tip:** Automatic hyphenation (e.g. using `white-space`) can also help.

**Exceptions:** Video subtitles and PDF.

### Responsibilities

- The development team ensures that the spacing between lines, words, letters and after paragraphs can be adjusted to the defined spacing.

## Examples

The spacing is increased with the help of customised bookmarklets or style sheets. No content or functionalities are lost in the process.

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#text-spacing>
- <https://www.w3.org/WAI/WCAG22/quickref/#text-spacing>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C36>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C35>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C21>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C28>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-12-textabstand/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-12-textabstaende-anpassbar>

### Weiteres
- <https://www.wcag.com/designers/1-4-12-text-spacing/>
- <https://www.digitala11y.com/understanding-sc-1-4-12-text-spacing/>
- <https://www.boia.org/wcag2/cp/1.4.12>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1412_Text_Spacing>