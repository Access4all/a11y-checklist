---
id: "35"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/page-titled.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.2 Page Titled - A

## Understanding (short)

**Every page** needs a **unique, meaningful title**. This enables assistive technologies (e.g. screen readers) to quickly identify pages and improves orientation when navigating within a website.

## Understanding (long)

The `<title>` element is the first thing that is output by assistive technologies (e.g. screen readers) after a page is loaded. Therefore, every page within a website requires a meaningful, unique title. Important here:

- The main topic of the current page is clearly recognisable; this part often reflects the first heading in the main area (`<main>`).
- The name of the operator is always included.

The repetitive part (the operator information) should be placed at the end. In addition, the individual components of the title should be sensibly separated (e.g. with a hyphen).

**Tip:** It is a good idea to also include urgent information (e.g. in the event of incorrect input after submitting a form) in the page title so that this is communicated at an early stage. See also **📜-3.3.1 Error Identification** in this regard.

### Responsibilities

- The development team creates the necessary technical requirements, such as a field for entering the page title.
- The content managers define a suitable title for each page.

## Examples

```html
<!-- Title plus operator -->
<title>Contact form - Bernasconi AG</title>

<!-- As above, but with additional note due to incorrect entries -->
<title>Warning: Invalid login data! - Contact form - Bernasconi AG</title>

<!-- Operator is already included in the title and does not need to be added (typical for a homepage) -->
<title>Welcome to Bernasconi AG</title>
```

## References public

### WCAG-Varianten

- <https://www.w3.org/TR/WCAG22/#page-titled>
- <https://www.w3.org/WAI/WCAG22/quickref/#page-titled>

### Techniken

- <https://www.w3.org/WAI/WCAG21/Techniques/general/G88.html>

## References internal

### BITV

- <https://www.bit-inklusiv.de/bitv-softwaretest/> → keine spezifischen Infos für dieses EK!
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-2-sinnvolle-dokumenttitel>

### Weiteres

- <https://www.wuhcag.com/page-titled/>
- <https://wcag.com/authors/2-4-2-page-titled/>
- <https://www.digitala11y.com/understanding-sc-2-4-2-page-titled/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/2-4-navigable-level-a/#Success_Criterion_242_Page_Titled>