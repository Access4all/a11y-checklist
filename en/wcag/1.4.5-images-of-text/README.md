---
id: "18"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/images-of-text.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 1.4.5 Images of Text - AA

## Understanding (short)

**Texts** are **not integrated as graphics**. This enables unrestricted processing and presentation of the same.

## Understanding (long)

If texts are integrated as graphics (e.g. using the `<img>` element), this makes it more difficult for people with visual impairments to read them, as they cannot adapt them to their individual needs (e.g. scaling the size without loss of quality, changing foreground and background colors, spacing or font, etc.).

Exceptions are texts for which the particular type of presentation is indispensable for the information conveyed (e.g. logos or brand names), as well as texts that are part of an image or diagram with additional visual content (such as labels on a diagram). Accurate labeling of these is then necessary, see [📜-1.1.1 Non-text Content](/en/wcag/1.1.1-non-text-content).

**Note:** The possibilities of modern HTML (such as individual fonts and SVG) make the use of font graphics hardly necessary anymore.

### Responsibilities

- The design team defines visual elements based on the technical possibilities (such as HTML and SVG).
- The development team correctly implements the specifications defined by the design team.
- The content managers design content as text and do not use font graphics. If such graphics are nevertheless necessary, they are accurately described with alternative text.

## Examples

```html
<!-- Can be legitimate: Logo with special lettering -->
<img src=“logo.png” alt=“Logo XYZ” />

<!-- No longer legitimate since you can embed any font in HTML -->
<h1>
  <img src=“welcome.png” alt="Welcome to our website!” />
</h1>
```

## ✅ Checkpoints

- [✅ Texts not as graphics](texts-not-as-graphics)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#images-of-text>
- <https://www.w3.org/WAI/WCAG22/quickref/#images-of-text>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C22>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C30>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G140>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF7>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C12>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C14>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C6>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C13>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-5-schriftgrafiken/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-5-schriftgrafiken>

### Weiteres
- <https://www.wcag.com/designers/1-4-5-images-of-text/>
- <https://www.digitala11y.com/understanding-sc-1-4-5-image-of-text/>
- <https://www.boia.org/wcag2/cp/1.4.5>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_145_Images_of_Text>