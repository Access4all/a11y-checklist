---
id: "60"
parent_id: "77"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/parsing.html"
created_at: "2015-08-04 14:36:01"
---

# 📜 4.1.1 Parsing (obsolete) - A

## Understanding (short)

The **HTML code** of a website must **not** contain any errors relevant to accessibility. This enables assistive technologies (e.g. screen readers) to interpret the page reliably.

## Understanding (long)

_**Obsolet:** Since September 2023, this success criterion has always been considered fulfilled according to the W3C resolution (for systems that are implemented in HTML and XML). More information here: [How and why is success criteria 4.1.1 Parsing obsolete?](https://www.w3.org/WAI/standards-guidelines/wcag/faq/#parsing411)_

Code well-formedness and code validity according to the set doctype are prerequisites for qualitatively controllable and verifiable web content. Screen readers and other assistive technologies in particular reveal problems here even more clearly than visual browsers.

At the same time, experience has shown that very few code errors have a direct impact on the accessibility of a website that is not already covered by other WCAG guidelines. However, the following points must be taken into account, as they are usually still directly relevant to accessibility:

- Incomplete starting and closing of tags
- Invalid nesting of tags
- Duplicate attributes
- Duplicate IDs
- Invalid use of ARIA

**Tip:** The above points can be checked automatically with appropriate tools

### Responsibilities

- The development team creates well-formed and valid HTML code according to the set doctype.

## ✅ Checkpoints

- [✅ No syntax errors (obsolete)](no-syntax-errors-obsolete)
