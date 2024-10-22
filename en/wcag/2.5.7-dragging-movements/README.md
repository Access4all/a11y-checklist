---
id: "111"
parent_id: "98"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/dragging-movements.html"
created_at: "2023-10-23 11:00:29"
---

# 📜 2.5.7 Dragging Movements - AA

## Understanding (short)

For content that is operated by **drag & drop**, **alternative input options** must be available **by simple pointer input**. This allows people with limited mobility to use this content.

## Understanding (long)

A **dragging movement** (drag & drop) is characterized by the fact that it has a **specific start and exact end point**. The path in between, however, is not relevant (compare with [📜-2.5.1 Pointer Gestures](/en/wcag/2.5.1-pointer-gestures)).

Pulling movements are demanding, which is why certain user groups cannot perform them (or can only do so imprecisely), e.g. people with Parkinson's disease or tetraplegia.

It is therefore important that functions that rely on dragging movements can also be operated via an alternative, **simple** pointer input (such as clicking, double-clicking, or click-and-hold). Alternatives can be, for example

- In a painting program, a connecting line between two elements can be drawn by dragging; alternatively, the first element, then a "Connect to" button, and finally the second element can be clicked.
- A shopping list can be sorted by dragging; in addition, each element has a drop-down menu with options such as "Move element to start", "Move element to position X", etc.
- In a project management tool with various columns, the work packages can be moved to any column by dragging them; in addition, a drop-down menu can be opened for each element and buttons such as "To previous column", "To column X" or "To last column" can be selected.

**Note:** This success criterion can also be fulfilled by having an additional alternative operating element for such a complex function that fulfills the same purpose. Important: this must be operable with simple pointer inputs (a pure keyboard alternative is therefore **not** permitted, see [📜-2.1.1 Keyboard](/en/wcag/2.1.1-keyboard)).

### Responsibilities

- The design team also defines alternative operating options for drag movements that can be used with simple pointer inputs.
- The development team correctly implements the specifications defined by the design team. If JavaScript widget libraries are used, these are first examined in detail for accessibility.
- Clients should be aware that the implementation of alternative input options means a certain amount of additional work.

## Examples

- A shopping list can be sorted by dragging. In addition, two ‘Move one item up / down’ buttons are offered for each list element. Alternatively, a drop-down menu is offered for each list element, which contains the above-mentioned functionalities as well as others (such as ‘Move to the beginning / end of the list’).
- A slider can be used to select a numerical value, for example to set the maximum price in a search filter. In addition, an input field is provided where the numerical value can be entered directly.
- The visible section of a map can be moved by dragging. The map also has ‘Up / Down / Left / Right’ buttons to move the view.
- Any number of objects can be marked using a square marker (dragging movement). Alternatively, you can click once to set the start point of the marker and then click a second time to set the end point.

## ✅ Checkpoints

- [✅ Alternative to pulling movements](alternative-to-pulling-movements)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#dragging-movements>
- <https://www.w3.org/WAI/WCAG22/quickref/#dragging-movements>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G219>

## References internal

### Weiteres

- <https://www.tpgi.com/how-to-test-2-5-7-dragging-movements/>
- <https://www.tpgi.com/is-swiping-a-path-based-gesture/>
- <https://www.hellbusch.de/ziehende-bewegungen/>
- Intopia 2.5.7: <https://youtu.be/6dLUCAsr5fE>
- <https://www.wcag.com/developers/2-5-7-dragging-movements/>
- <https://www.digitala11y.com/understanding-sc-2-5-7-dragging-movements/>
- <https://dequeuniversity.com/resources/level-aa/2.5.7-dragging-movements>
- <https://www.hellbusch.de/ziehende-bewegungen/>