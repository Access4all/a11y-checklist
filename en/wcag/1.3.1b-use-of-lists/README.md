---
id: "78"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 1.3.1b Use of Lists

## Understanding (short)

Groups of **small, similar elements** must be correctly marked **as lists**. This enables assistive technologies (e.g. screen readers) to capture them and provide a quick overview and navigation.

## Understanding (long)

Lists (`<ul>` and `<ol>`) and glossaries (`<dl>`) are important elements for the semantic grouping and structuring of, for example, links, products, menu items etc. They make it possible to recognize the beginning and end of the groups as well as the total number of contained elements and to navigate within them.

List elements can be arranged both horizontally (next to each other, e.g. social media channels) and vertically (below each other, e.g. a page navigation). The use of plain text hyphens at the beginning of a line of text is not a "real" list.

Lists with a single entry should be avoided (unless they are generated automatically). Lists can be nested, for example for submenus.

**Important:** Lists are suitable for grouping small elements. For more extensive elements, `<article>` or `<section>` are more suitable; such as news teasers, which consist of a title, date, image, text, etc. (see also [✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}).

### Responsibilities

- The development team provides the page areas and functionalities with lists. It also creates the necessary technical requirements for content creation, such as the option to select different list types as format templates in a WYSIWYG editor.
- The content managers format lists correctly.

## Examples

```html
<!-- Link list -->
<ul>
  <li>Sitemap</li>
  <li>Legal Disclaimer</li>
  <li>RSS Feed</li>
</ul>

<!-- Nested menu -->
<ul>
  <li>Homepage</li>
  <li><a href="...">Products</a>
    <ul>
      <li><a href="...">Computers</a></li>
      <li><a href="...">TVs</a></li>
      <li><a href="...">Refrigerators</a></li>
    </ul>
  </li>
  <li>Contact</li>
</ul>

<!-- Wrong list (not accessible) -->
<p>
  - Tidy up room<br />
  - Go shopping<br />
  - Cooking dinner<br />
</p>
```

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H48>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF21>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-1-info-und-beziehungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1b-html-strukturelemente-fuer-listen>

### Weiteres
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>