---
id: "37"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/link-purpose-in-context.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.4 Link Purpose (In Context) - A

## Understanding (short)

**Links** must be **labelled** in such a way that their **destination and purpose** is clearly recognisable. This makes it possible for assistive technologies (e.g. screen readers) to clearly indicate links outside of their immediate context (e.g. in a list of all links).

## Understanding (long)

Links should be understandable even without the immediate context that surrounds them. Blind people often have the screen reader display or read out all the links on a page as a list; link texts such as "Next" or "More" are then less informative, especially if there are several of them on the same page (e.g. on a news overview page).
Therefore, provide each link with a link text that is as meaningful as possible. Instead of:

> Learn [more](https://example.com) about our company!

...it is better to use:

> Learn [more about our company](https://example.com)!

In the case of stand-alone, textually uninformative links, we recommend supplementing the link text with visually hidden content:

```html
<a href="...">
More
<span class="visually-hidden">about our company</span>
</a>
```

**Note:** In fact, according to WCAG, context is sufficient if helpful text is located within the same paragraph, list element or table cell as the link. The above example `...<a href="...">more</a>...` would therefore be sufficient, but would still not be helpful in the screen reader scenario mentioned (displaying a list of links). We therefore recommend always making link labels self-explanatory regardless of their context.

**More:** Links that link to other file formats (such as PDF) should contain a reference to the format change. Ideally, this should also be supplemented by the size of the linked file, such as "Explanatory document WCAG 2.1 (Word, 3MB)". Multiple links to the same target should be avoided: for example, the date, title and photo of a news teaser should not be linked separately, but the entire element should be implemented as a single link.

### Responsibilities

- The development team ensures that generic links are enriched with meaningful (possibly visually hidden) information and that links are generally meaningful and unambiguous.
- Those responsible for content label links within text in a meaningful and unambiguous manner.

## Examples

```html
<!-- Well described link purpose -->
<p>
  Learn
  <a href="...">more about our company</a>!
</p>

<!-- Poorly described link purpose (but at least in context) -->
<p>
  Learn
  <a href="...">more</a>
  about our company!
</p>

<!-- Poorly described link purpose (without context) -->
<p>
  Our company has been around for 20 years.
</p>
<a href="...">Find out more!</a><!-- Link outside the paragraph -->

<!-- Poorly implemented teaser -->
<article>
  <a href="election-results.html">
    <h2>Election results announced</h2><!-- First link -->
  </a>

  <a href="election-results.html">
    <time>Election results have been published</time><!-- Further (multiple) link -->
  </a>

  <a href="election-results.html">
    <img src="ballot-box.jpg" alt="Ballot box"><!-- Further (multiple) link -->
  </a>
</article>

<!-- Well implemented teaser, variant 1 -->
<a href="election-results.html"><!-- Single link -->
  <article>
    <h2>Election results announced</h2>

    <time>Election results published</time>

    <img src="ballot-box.jpg" alt="Ballot box">
  </article>
</a>

<!-- Well implemented teaser, variant 2 -->
<article>
  <a href="election-results.html"><!-- Single link -->
    <h2>Election results known</h2>
  </a>

  <time>Election results have been published</time>

  <img src="ballot-box.jpg" alt="Ballot box">
</article>

## Checkpoints

- [Self-speaking links](self-speaking-links)
- [Multiple links](multiple-links)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#link-purpose-in-context>
- <https://www.w3.org/WAI/WCAG22/quickref/#link-purpose-in-context>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G91>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H30>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H24>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G53>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA7>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA8>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H77>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H78>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H79>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H81>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF11>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF13>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/2-4-4-linkzweck-im-kontext/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-4-aussagekraeftige-linktexte>

### Weiteres
- <https://wcag.com/authors/2-4-4-link-purpose-in-context/>
- <https://www.wuhcag.com/link-purpose-in-context/>
- <https://www.digitala11y.com/link-purpose-in-context-understanding-sc-2-4-4/>