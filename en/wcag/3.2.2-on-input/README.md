---
id: "50"
parent_id: "74"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/on-input.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.2.2 On Input - A

## Understanding (short)

**Interaction with an element** (e.g. selecting an entry from a combo box) alone must **not cause a change to its context** (e.g. reloading the entire page). This prevents unpredictable, unintended behaviour.

## Understanding (long)

When interacting with an element, it should not lead to a change in context: This includes reloading the current page (or reloading, replacing or removing the part of the page on which the focussed element is located), as well as redirecting to another page. Such behaviour is often unpredictable, disrupts the flow of interaction and leads to confusion, especially when using assistive technology (such as screen readers, but also keyboards, see **📜-2.1.1 Keyboard**).

Make sure, for example, that selecting an entry in a combo box (`<select>`) does not automatically reload the page; leave control with the user (e.g. by requiring them to activate a switch). Correctly programmed HTML code should already fulfil these requirements.

**Note:** Changes that do not affect the user's position on the page are permitted. For example, subsequent elements can be hidden, displayed, deactivated, etc. by selecting a radio button.

**Exception:** Changes to the context are permitted if this has been announced in advance (e.g. by a text explaining how to use an element). Such an exception can be a `<select>` to change the page language. Otherwise, however, this rarely makes sense and tends to indicate inadequate usability.

### Responsibilities

- The development team implements interactive elements (such as JavaScripts widgets) in such a way that no change of context occurs when interacting with them (unless the interaction is an explicit request to do so, such as activating a button).

## ✅ Checkpoints

- [✅ Context change on input](context-change-on-input)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#on-input>
- <https://www.w3.org/WAI/WCAG22/quickref/#on-input>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G80>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H32>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G13>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR19>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF15>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/3-2-2-kontextaenderung-bei-eingabe/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-2-2-keine-unerwartete-kontextaenderung-bei-eingabe>

### Weiteres
- <https://wcag.com/developers/3-2-2-on-input/>
- <https://www.wuhcag.com/on-input/>
- <https://www.digitala11y.com/understanding-sc-3-2-2-on-input/>