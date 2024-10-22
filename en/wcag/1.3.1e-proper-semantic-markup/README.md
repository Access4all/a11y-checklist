---
id: "106"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2020-07-13 11:46:23"
---

# 📜 1.3.1e Proper Semantic Markup

## Understanding (short)

Different **types of content** need to be **semantically identified** as such, e.g. as paragraphs, quotes or code. This allows assistive technologies (e.g. screen readers) to meaningfully announce the elements and provide navigation within them.

## Understanding (long)

Text must be formatted with semantically meaningful markup, such as <cite>, <blockquote>, <code>, <sup>, and <address>. Empty elements of this type should be avoided.

Paragraphs are formatted using <p>. To separate multiple paragraphs, additional <p> elements are used, not <br>.

If font variations have meaningful content, they must be accessible to everyone. Since screen readers are cautious when specifically naming semantic elements, and do not explicitly announce semantically meaningful elements such as <del> (strikethrough) or <em> (bold), additional techniques may sometimes be necessary (e.g., visually hidden text).

**Important**: The separation between information with structure (content and HTML) and presentation (CSS) must be ensured. Markup without meaning (such as <i> and <b>) should be avoided.


### Responsibilities

- The development team provides the page areas and functionalities with semantically meaningful markup. It also creates the necessary technical prerequisites for content creation, such as the ability to define corresponding elements in a WYSIWYG editor.
- The content managers format content correctly.

## Examples

```html
<!-- Quote -->
<blockquote>
  ‘ I am a Berliner.’ (John F. Kennedy)
</blockquote>

<!-- Emphasis -->
<p>
  We must act <em>now</em>, otherwise it will be too late! <!-- True -->
  We must act <b>now</b>, otherwise it's too late!   <!-- False-->
</p>

<!-- Incorrectly formatted paragraph separation -->
<p>
  Welcome on our website!<br />
  <br />
  We look forward to seeing you here.<br />
  <br />
  Feel free to contact us if you have any questions.
</p>

<!-- Contact information author / owner -->
<address>
  Maria Bernasconi<br /><!-- Line breaks are appropriate here -->
  Mustergasse 123<br />
  1234 Grünwil<br />
  Switzerland
</address>
```

## ✅ Checkpoints

- [✅ Paragraphs semantically correct](paragraphs-semantically-correct)
- [✅ Content semantically correct](content-semantically-correct)
- [✅ Empty elements](empty-elements)
- [✅ Text formatting](text-formatting)
- [✅ Quotations semantically correct](quotations-semantically-correct)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G115> UND <https://www.w3.org/WAI/WCAG22/Techniques/html/H49>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G117>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA24>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G138>
- <https://www.w3.org/WAI/WCAG22/Techniques/text/T1>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-1-info-und-beziehungen/>

### Weiteres
- <https://www.wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>