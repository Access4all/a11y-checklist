---
id: "99"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pointer-gestures.html"
created_at: "2019-11-10 20:24:09"
---

# 2.5.1 Pointer Gestures - A

## Understanding (short)

For content that is operated via **path-based or multi-point pointer gestures**, **alternative input options** must exist **using simple pointer input**. This enables people who are restricted in their freedom of movement to also operate this content.

## Understanding (long)

A **path pointer gesture** is characterized by the fact that it has a **specific start point and a direction** (e.g. from left to right), and sometimes a change of direction (e.g. from left to right, then upwards). The exact end point of the movement, on the other hand, is not relevant: e.g. a swipe gesture can cover the entire width of the screen, but can also be very limited (this is why drag-and-move is not considered path-based, compare with **📜-2.5.7 Dragging Movements**).

Path pointing gestures are demanding, which is why certain user groups cannot perform them (or can only do so inaccurately), e.g. people with Parkinson's or tetraplegia. The same applies to **multi-point pointing gestures**, such as the spread gesture for enlarging a section of a map.

It is therefore important that functions that rely on path and/or multi-point pointing gestures can also be operated using an alternative, **simple** pointer input (such as clicking, double-clicking, or click-and-hold). Alternatives can be, for example:

- A menu can be displayed using a swipe gesture (from the left edge); there is also a "Show menu" button.
- A map section can be zoomed using the spread gesture; there are also the buttons "Zoom in on map" (or "Zoom out on map")
    - Or: the user can double-click-and-hold, and then move the mouse pointer up or down.
- The currently displayed slide of a news or photo carousel can be changed using a swipe gesture; there are also "Previous" (or "Next") buttons.
- In a project management tool with various columns, the work packages can be moved to the next or previous column using a swipe gesture; an element can also be selected and moved using the "Move left" (or "Move right") buttons.

**Exceptions:** Exceptions to this criterion are cases in which the multi-point or path-based pointer gesture is essential - for example in a drawing program.

**Note:** This success criterion can also be fulfilled by having an additional alternative operating element for such a complex function that fulfills the same purpose. Important: this must be operable with simple pointer inputs (a pure keyboard alternative is therefore **not** permitted, see **📜-2.1.1 Keyboard**).

### Responsibilities

- The design team also defines alternative operating options for multi-point or path-based pointer gestures that can be used with simple pointer inputs.
- The development team correctly implements the specifications defined by the design team. If JavaScript widget libraries are used, they are first thoroughly checked for accessibility.
- Clients should be aware that the implementation of alternative input options involves a certain amount of additional work.

## Checkpoints

- [Alternative for path and multi-point pointer gestures](alternative-for-path-and-multi-point-pointer-gestures)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pointer-gestures>
- <https://www.w3.org/WAI/WCAG22/quickref/#pointer-gestures>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G215>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G216>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-5-1-zeigergesten-alternativen-fuer-komplexe-zeiger-gesten/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-5-1-alternativen-fuer-komplexe-zeiger-gesten>

### Weiteres
- <https://www.wcag.com/developers/2-5-1-pointer-gestures/>
- <https://www.wuhcag.com/pointer-gestures/>
- <https://www.digitala11y.com/understanding-sc-2-5-1-pointer-gestures/>
- <https://www.boia.org/wcag2/cp/2.5.1>