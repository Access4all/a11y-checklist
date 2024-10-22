---
id: "12"
parent_id: "65"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/meaningful-sequence.html"
created_at: "2015-08-04 14:36:00"
---

# 1.3.2 Meaningful Sequence - A

## Understanding (short)

All **content** must be arranged in the document (DOM) **in a logical order** (independent of CSS). This enables assistive devices (e.g. screen readers) to correctly link (linearise) the visually two-dimensionally arranged content and output it one-dimensionally as text.

## Understanding (long)

Sighted people perceive a website as a two-dimensional, graphical area. Blind people, on the other hand, perceive a page as one-dimensional (linear) and purely textual using a screen reader: one element after the other is read out, from top to bottom. The order of the elements in the DOM must therefore make sense, regardless of how the visual arrangement is subsequently changed using CSS.

If, for example, the photo of a news item is placed visually before its headline, the headline must still come first in the DOM. Using CSS (e.g. flexbox or grid), the visual arrangement can then be changed as desired.

**Important:** In general, the visual appearance should only deviate from the order in the DOM in well-founded cases. For example, it is unfavourable to display further relevant information in a form below the submit button: this is easily overlooked visually, but screen reader users in particular will not normally find it, as they activate the submit button when they encounter it (and do not search for further information below it). This can also impair intuitive focus guidance when using the keyboard (see **📜-2.1.1 Keyboard** and **📜-2.4.3 Focus Order**).

### Responsibilities

- The design team must be aware that complicated arrangements of content may be difficult to implement technically.
- The development team places the page areas and content in the DOM in a sensible order, regardless of their visual arrangement.

### Delimitation

- This success criterion ensures that the DOM sequence **makes sense**.
- That a **manual override** of the DOM order for the focus order makes sense is required by **📜-2.4.3 Focus Order**.

## Examples

```html
<style>
  article {
    display: flex;
    flex-direction: column;
  }

  h2 {
    order: 2;
  }

  img {
    order: 1;
  }

  p {
     order: 3;
  }
</style>

<article>
  <h2>Election results known</h2><!--Heading comes to the top of the DOM-->
  <img src="ballotbox.jpg" alt="A man casts his vote at a ballot box" /><!-- Visually, however, the image is at the top-->

  <p>The results of the current elections were published this morning.</p>
</article>
```

## Checkpoints

- [Correct order](correct-order)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#meaningful-sequence>
- <https://www.w3.org/WAI/WCAG22/quickref/#meaningful-sequence>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G57>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C27>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF3>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G57>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H34>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H56>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C6>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-2-sinnvolle-reihenfolge/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-2-sinnvolle-reihenfolge>

### Weiteres

- <https://adrianroselli.com/2015/09/source-order-matters.html>
- <https://adrianroselli.com/2015/10/html-source-order-vs-css-display-order.html>
- <https://adrianroselli.com/2019/04/reading-order-bookmarklet.html>
- <https://www.wcag.com/developers/1-3-2-meaningful-sequence/>
- <https://www.wuhcag.com/meaningful-sequence/>
- <https://www.digitala11y.com/understanding-sc-1-3-2-meaningful-sequence/>
- <https://www.boia.org/wcag2/cp/1.3.2>