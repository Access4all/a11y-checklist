---
id: "49"
parent_id: "74"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/on-focus.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.2.1 On Focus - A

## Understanding (short)

**Focussing on an element** alone must **not cause a change to its context** (e.g. reloading the entire page). This prevents unpredictable, unintended behaviour.

## Understanding (long)

If a component of the page receives the focus, this must not lead to a change in context: this includes reloading the current page (or reloading, replacing or removing the part of the page on which the focussed element is located), as well as redirecting to another page. Such behaviour is often unpredictable, disrupts the interaction flow and leads to confusion, especially when using assistive technology (such as screen readers, but also keyboards, see [📜-2.1.1 Keyboard](/en/wcag/2.1.1-keyboard)).

Make sure, for example, that neither links or buttons are activated nor forms are sent with focus; leave control with the user (e.g. by requiring them to activate a button). Correctly programmed HTML code should already fulfil these requirements.

**Note:** Changes that do not affect the user's position on the page are permitted. This includes, for example, displaying a tooltip when focussing on a link or automatically opening a submenu.

### Responsibilities

- The development team implements focusable elements (such as JavaScripts widgets) in such a way that the context is not changed when they are focussed.

## ✅ Checkpoints

- [✅ Context change with focus](context-change-with-focus)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#on-focus>
- <https://www.w3.org/WAI/WCAG22/quickref/#on-focus>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G107>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G200>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G201>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-2-kontextaenderung-bei-fokus/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-2-1-keine-unerwartete-kontextaenderung-bei-fokus>

### Weiteres
- <https://wcag.com/designers/3-2-1-on-focus/>
- <https://www.wuhcag.com/on-focus/>
- <https://www.digitala11y.com/understanding-sc-3-2-1-on-focus/>
