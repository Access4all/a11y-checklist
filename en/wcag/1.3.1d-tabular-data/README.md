---
id: "83"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1d Tabular data

## Understanding (short)

**Tabular data** must be labelled as such, including **row/column titles** and **labelling** and **summary** where applicable. This enables assistive technologies (e.g. screen readers) to relate the individual pieces of information to each other, to display the data in a meaningful way and to offer navigation within it.

## Understanding (long)

Extensive or complex data tables should be labelled using a `<caption>` element; this can also be visually hidden. The summary attribute can also be used to provide a summary for screen readers.

For labelling row and column titles, the `<th>` element must be used; other formatting (such as the `<strong>` element) is not sufficient. There must be at least column or row headings, but if possible there should be both. The elements `<thead>`, `<tbody>` and `<tfoot>` have no influence on accessibility, but can be used for visual design, for example.

Complex semantic structures within tables (such as headings `<h1>` to `<h6>`) should be avoided. Empty rows or columns are problematic. Individual cells, on the other hand, may be empty; however, visually hidden text can lead to a better screen reader experience.

**Recommendation:** Use tables exclusively for the presentation of data and not for layout (to arrange content differently).

### Spanning cells

The spanning of cells using `colspan` and `rowspan` must be used with restraint. Rule of thumb: If these attributes occur at most once per row or column, no problems are to be expected. However, if several are used, the table must be tested thoroughly with a screen reader; further optimisation via attributes such as 'scope' or 'headers' may then be appropriate.

Sometimes, however, it is easier to split complex tables into several smaller tables (and name them meaningfully with `<caption>`) in order to avoid this problem.

### Responsibilities

- The development team provides the page areas and functionalities with tables. It also creates the necessary technical requirements for content creation, such as the ability to define column and row titles within tables in a WYSIWYG editor.
- The content managers format tables correctly.

## Examples

```html
<!-- Table with row and column titles -->
<table summary="Overview of some of the most beautiful cities in Switzerland">
  <!-- Visually hidden (for CSS see 1.3.1a) -->
  <caption class="visually-hidden">Three cities in comparison</caption>
  <tr>
    <th>City</th> <!-- Column title -->
    <th>Postcode</th><!-- Column header -->
    <th>Language</th> <!-- Column header -->
  </tr>
  <tr>
    <th>Zurich</th><!-- Line title -->
    <td>8000</td>
    <td>German</td>
  </tr>
  <tr>
    <th>Geneva</th><!-- Line title -->
    <td>1200</td>
    <td>German</td>
  </tr>
  <!-- More lines... -->
</table>

<!-- Visually empty cells -->
<table>
  <tr>
    <th>Name</th>
    <th>Place of residence</th>
  </tr>
  <tr>
    <th>Hans Muster</th>
    <td>Grünwil</td>
  </tr>
  <tr>
    <th>Maria Bernasconi</th>
    <td>
      <span class="visually-hidden">No specification</span><!-- Better than empty; could also be an icon with alt text -->
    </td>
  </tr>
  <!-- More lines... -->
</table>
```

## ✅ Checkpoints

- [✅ Table headings](table-headings)
- [✅ Column or row title](column-or-row-title)
- [✅ Table semantically correct](table-semantically-correct)
- [✅ No empty columns or rows](no-empty-columns-or-rows)
- [✅ Spanning cells](spanning-cells)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H51>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H39>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H63>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H43>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF6>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF20>

## References internal

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1e-datentabellen-richtig-aufgebaut>
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-1-info-und-beziehungen/>

### Weiteres
- <https://adrianroselli.com/2023/02/avoid-spanning-table-headers.html> → Ich (Josua) habe das sehr ausführlich nachgeprüft und die obigen Empfehlungen daraus abgeleitet. Es ist und bleibt aber ein leidiges Thema, dass Screenreader bis heute Probleme damit haben, obwohl die Browser dies visuell eindeutig und korrekt darstellen.
- <https://www.boia.org/blog/how-to-build-accessible-tables>