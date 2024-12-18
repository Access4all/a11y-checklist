---
id: "17"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/resize-text.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 1.4.4 Resize text - AA

## Understanding (short)

**Text content** must be able to be enlarged up to **200%**. This enables people with visual impairments to recognize and read them.

## Understanding (long)

Many people with visual impairments are dependent on the browser's zoom functions. To enable them to use these, the layout and typeface must be adaptable.

**Note:** Modern browsers can easily scale websites that are based on solid, responsive HTML and CSS. This should automatically fulfill this success criterion. Nevertheless, we recommend checking the scaling behavior regularly, as this can also reveal other deficiencies (such as overlapping, see [📜-1.4.10 Reflow](/en/wcag/1.4.10-reflow)).

**Important:** On mobile devices, the use of `<meta name=“viewport” content=“user-scalable=no, maximum-scale=1”>` can prevent (or severely restrict, depending on the values used) zooming. For mobile apps, it must also be ensured that the font size selected in the system settings is adopted (and that this does not lead to any display problems).

### Responsibilities

- The development team ensures that the content can be enlarged up to 200%.

## ✅ Checkpoints

- [✅ 200% zoom](200-zoom)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#resize-text>
- <https://www.w3.org/WAI/WCAG22/quickref/#resize-text>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G142>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C28>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C12>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C13>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C14>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR34>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G146>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G178>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G179>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-4-textgroesse-aendern/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-4-text-auf-200-vergroesserbar>

### Weiteres
- <https://www.wcag.com/designers/1-4-4-resize-text/>
- <https://www.digitala11y.com/understanding-sc-1-4-4-resize-text/>
- <https://www.boia.org/wcag2/cp/1.4.4>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_144_Resize_text>
