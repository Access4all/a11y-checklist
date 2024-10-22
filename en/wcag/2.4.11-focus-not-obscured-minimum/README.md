---
id: "108"
parent_id: "71"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-not-obscured-minimum.html"
created_at: "2023-10-23 10:49:15"
---

# 📜 2.4.11 Focus Not Obscured (Minimum) - AA

## Understanding (short)

The **keyboard focus** should **not be covered** by other elements. This enables effortless navigation with the keyboard.

## Understanding (long)

If the currently focussed element is covered by other elements, this makes navigation using the keyboard considerably more difficult (see [📜-2.1.1 Keyboard](/en/wcag/2.1.1-keyboard)). This can happen, for example, if the footer area is fixed when scrolling (‘sticky footer’) and the focussed element is at the bottom of the viewport.

Partial covering of the focus is tolerable, even if it should be avoided; complete covering is unacceptable.

**Note:** Poor focus guidance can also cause such problems, see also [📜-2.4.3 Focus Order](/en/wcag/2.4.3-focus-order).

### Exceptions

- Situations in which an element temporarily overlaps the surrounding content are negligible: for example, if the focus disappears behind a previously opened date selector ([✅ Date picker / time picker](/en/wcag/4.1.2a-advanced-controls-widgets/date-picker-time-picker)). It is important that the overlapping element can be closed if required (e.g. using the `Esc` key).
- The position of some elements can be changed by the user, such as certain dialogues ([✅ Dialogs](/en/wcag/4.1.2a-advanced-controls-widgets/dialogs)); for such elements, only the initial position must meet the requirements, i.e. directly after the dialogue appears.

### Responsibilities

- The development team positions interactive elements and scrolls the viewport so that the focus is always as visible as possible.

## ✅ Checkpoints

- [✅ Focus visible](focus-visible)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#focus-not-obscured-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#focus-not-obscured-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C43>

## References internal

### Weiteres

- <https://www.w3.org/TR/css-scroll-snap/#propdef-scroll-padding>
- Intopia 2.4.11: <https://youtu.be/0ZoyE1u0eZM>
- <https://www.digitala11y.com/understanding-sc-2-4-11-focus-not-obscured-minimum/>
- <https://www.tpgi.com/how-to-test-2-4-11-focus-not-obscured-minimum/>
- <https://www.hellbusch.de/fokus-nicht-verdeckt/>