---
id: "84"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1a Headings structure

## Understanding (short)

**Headings** must be implemented **semantically and hierarchically correct**. This enables assistive technologies (e.g. screen readers) to capture the structure and content of the page and provide a quick overview and navigation.

## Understanding (long)

It is important that the heading structure of a page reflects its content in detail and is hierarchically correct (e.g. no skipped levels). This applies not only to the main content of a page, but also to visually clearly separable areas that contain further content, such as header and footer areas, navigation, further information, advertising, etc. If the visual design does not provide for certain headings, these can be hidden on a visual level.

The elements `<h1>` to `<h6>` must be used; other formatting (such as the `<strong>` element) is not sufficient. Make sure that a page always has a first-level heading (`<h1>`) and that it names the main content; other `<h1>` elements may also exist, provided this is not excluded by other requirements (e.g. search engine optimization).

The first heading of a page does not necessarily have to be an `<h1>`: headings often start before the main content at a lower level so that the `<h1>` of the main content stands on its own.

Headings are generally the first element of a content block in the DOM. They always require subsequent content (such as text, lists, tables, etc.) and should describe this concisely, see also [📜-2.4.6 Headings and Labels](/en/wcag/2.4.6-headings-and-labels).

**Note:** If a group of linked headings appears without subsequent content, it is better to use a list (e.g. `<ul>`), see also [📜-1.3.1b Use of Lists](/en/wcag/1.3.1b-use-of-lists) and [✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}.

**Important:** The HTML 5 outline algorithm is not supported by assistive technologies and is considered obsolete since HTML 5.2.

### Delimitation

- This success criterion ensures that existing headings are **semantically and hierarchically correctly implemented**
- It is not always necessary that such **exist** at all (but headings are usually the best technique for naming and delimiting content)
- That they are **meaningful** is required by [📜-2.4.6 Headings and Labels](/en/wcag/2.4.6-headings-and-labels).

### Responsibilities

- The design team defines meaningful, hierarchically correct (and, if necessary, visually hidden) headings for the page areas and functionalities.
- The development team correctly implements the specifications defined by the design team. It also creates the necessary technical requirements for content creation, such as the option to select different heading levels as format templates in a WYSIWYG editor.
- The content managers provide the created content with meaningful and hierarchically correct headings.

## Examples

```html
<style>
/* Moves the element out of the visible area of the screen without actually removing it */
.visually-hidden {
  position: absolute;
  left: -10000px;
  width: 1px;
  height: 1px;
  overflow: hidden;
}
</style>

<header>
  <h1 class="visually-hidden">Header</h1><!-- Visually hidden -->

  <p>John Doe's Web Presence</p>
</header>
<nav>
  <h1 class="visually-hidden">Navigation</h1>

  <ul>
    <li><a href="...">Homepage</a></li>
    <li><a href="...">Hobbies</a></li>
    <li><a href="...">About</a></li>
    <li><a href="...">Etc.</a></li>
  </ul>
</nav>
<main>
  <h1>My Hobbies</h1><!-- Normal heading -->

  <h2>Physical activities</h2>

  <h3>Playing soccer</h3>
  <p>Football is a sport played between two teams of eleven players with a spherical ball.</p>

  <h3>Dancing</h3>
  <p>Dance is a performing art form that consists of specifically selected sequences of human movement.</p>

  <h2>Relaxation</h2>

  <h3>Watching movies</h3>
  <p>A movie is a series of still images that creates the illusion of moving images due to the phi phenomenon.</p>
</main>
<footer>
  <h1 class="visually-hidden">Footer</h1>
  <p>Copyright 2057 John Doe</p>
</footer>
```

## ✅ Checkpoints

- [✅ Hierarchy of existing headings](hierarchy-of-existing-headings)
- [✅ Jumps between heading levels](jumps-between-heading-levels)
- [✅ Own heading](own-heading)
- [✅ The following content](the-following-content)
- [✅ Headings before related content](headings-before-related-content)
- [✅ Headings for accordions](headings-for-accordions)
- [✅ Headings semantically correct](headings-semantically-correct)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H42>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G141>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA12>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF9>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-1-info-und-beziehungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1a-html-strukturelemente-fuer-ueberschriften>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-1-bereiche-ueberspringbar>

### Weiteres

- Überschriften müssen vor Inhalt platziert sein: <https://adrianroselli.com/2020/02/block-links-cards-clickable-regions-etc.html#Order>
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>
