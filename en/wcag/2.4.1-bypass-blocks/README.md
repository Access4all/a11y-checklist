---
id: "33"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/bypass-blocks.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.4.1 Bypass Blocks - A

## Understanding (short)

It must be possible to skip over **repeating elements** (such as the header) on every page (e.g. with a 'skip to content' link). This allows immediate interaction with the content of the page without having to navigate to it first.

## Understanding (long)

Various user groups rely on accessibility features to navigate websites with extensive content. A keyboard user, for example, needs a ‘Jump to content’ link at the top of every page to avoid having to tab through all the previous elements (header, navigation, breadcrumbs, etc.) after every reload. This link can be hidden visually and only displayed when the focus is on.

Techniques to further simplify the skipping of such elements for certain assistive technologies are well-structured headings (see [📜-1.3.1a Headings structure](/en/wcag/1.3.1a-headings-structure)) and `accesskey` attributes. Jump links and access keys are ideally combined with each other.

**Tip:** A single jump link to the content is sufficient to fulfil this success criterion.

### Responsibilities

- The design team defines a visual design for jump links.
- The development team correctly implements the specifications defined by the design team.

## Examples

```html
<style>
  /* Moves the links out of the visible area of the screen without actually removing them  */
  .skip-links a {
    position: absolute;
    left: -10000px;
    width: 1px;
    height: 1px;
    overflow: hidden;
  }

  /* Resets the position of the links with focus */
  .skip-links a:focus {
    left: 0;
    top: 0;
    width: auto;
    height: auto;
  }
</style>

<!-- Typical jump links -->
<body>
  <ul class="skip-links">
   <li><a href="#content" accesskey="1">Inhalt</a></li><!-- Jump link to content-->
   <li><a href="#menu" accesskey="2">Navigation</a></li><!-- Additional jump link (within the page, optional) -->
   <li><a href="contact.html" accesskey="5">Suche</a></li><!-- Link (to your own page, optional)-->
  </ul>

  <nav id="menu"></nav>
    <!-- Navigation -->
  </nav>
  <main id="content">
    <!-- Content -->
  </main>
</body>

<!-- Fold-out elements  -->
<nav id="main-nav">
  <ul>
    <li><a href="...">Homepage</a></li>
    <li>
      <a href="...">Products</a><!--Best not to open automatically with focus! -->
      <ul>
        <li><a href="...">Telephones</a></li>
        <li><a href="...">Computer</a></li>
        <li><a href="...">Others</a></li>
      </ul>
    </li>
    <li>
      <a href="...">Services</a><!-- Also -->
      <ul>
        <!-- Many more sub-menu entries -->
      </ul>
    </li>
  </ul>
</nav>
```

## ✅ Checkpoints

- [✅ Jump links](jump-links)
- [✅ Skip sub-navigation points](skip-sub-navigation-points)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#bypass-blocks>
- <https://www.w3.org/WAI/WCAG22/quickref/#bypass-blocks>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G1>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G123>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G124>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA11>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H69>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF9>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H64>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR28>

## References internal

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-1-bereiche-ueberspringbar>

### Weiteres
- <https://www.wcag.com/developers/2-4-1-bypass-blocks/>
- <https://www.wuhcag.com/bypass-blocks/>
- <https://www.digitala11y.com/understanding-sc-2-4-1-bypass-blocks/>
- <https://www.boia.org/wcag2/cp/2.4.1>
