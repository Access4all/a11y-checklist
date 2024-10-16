---
id: "112"
parent_id: "98"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum.html"
created_at: "2023-10-23 11:02:02"
---

# 2.5.8 Target Size (Minimum) - AA

## Understanding (short)

**Activatable elements** must have a **minimum size** **or be sufficiently spaced** apart.  This makes them easier to use with a pointing device (such as a mouse or touch screen).

## Understanding (long)

Users with limited fine motor skills have problems hitting small targets. Sufficient size or enough space between the elements reduces the risk of accidentally activating the wrong control element.

The prescribed minimum size is `24 * 24px`. If an activatable element is smaller, it must have a corresponding distance to surrounding activatable elements: an element measuring `19 * 19px` therefore requires a distance of at least `5px`.

**Exceptions:** This does not apply to links that are located within continuous text (or are otherwise dependent on the surrounding line height); and in situations where the size of an element is essential for its function: for example, on a map where a large number of points of interest are displayed in a small space.

### Responsibilities

- The design team ensures that elements that can be activated are the minimum size required or have sufficient spacing.
- The development team correctly implements the specifications defined by the design team.

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#target-size-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#target-size-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C42>

## References internal

### Weiterführende Ressourcen
- Intopia 2.5.8: <https://youtu.be/PTgOK2obw9s>
- <https://www.tpgi.com/how-to-test-2-5-8-target-size-minimum/>
- <https://www.wcag.com/developers/2-5-8-target-size-minimum-level-aa/>
- <https://www.digitala11y.com/understanding-sc-2-5-8-target-size-minimum/>
- <https://www.boia.org/blog/understanding-target-size-under-wcag-2.2-and-how-it-affects-people-with-disabilities>
- <https://wnfox.com/index.php/2024/07/19/getting-to-the-bottom-of-minimum-wcag-conformant-interactive-element-size/>
- <https://www.hellbusch.de/zielgroesse/>