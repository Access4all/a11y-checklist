---
id: "40"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-visible.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.7 Focus Visible - AA

## Understanding (short)

The **keyboard focus** must be **well visible** at all times. This enables people who cannot use a mouse to navigate using the keyboard.

## Understanding (long)

If the keyboard focus is not or insufficiently visible, this makes navigation using the keyboard considerably more difficult (see 📜-2.1.1). The often low-contrast default style of many browsers is sufficient as a keyboard focus according to WCAG 2.1 (provided it remains visible throughout all elements); a minimum contrast is only required at level AAA (see 📜-2.4.13). For many people, however, the focus is not sufficiently visible.

We therefore also recommend the following at level AA: Always ensure that the keyboard focus is clearly visible at all times by defining a prominent, high-contrast style for it. A clearly visible frame should characterise focussed links, buttons, radio buttons, checkboxes, linked graphic elements, etc. The CSS attribute `outline` is particularly suitable for this, e.g. `outline: 2px dotted black`.

Please note in particular:

- If the focus only causes a colour change (e.g. inverting text and background colour), this must be specially optimised for the forced colours mode (✅-9).
    - A simple and effective trick: never set `outline: none`, but use `outline-color: transparent`. In forced colours mode, the outline remains visible.
- Focussed elements must also fulfil the contrast requirements (see 📜-1.4.3).
- Elements that are not visually visible but can be focussed must be displayed with focus (such as jump links, see also 📜-2.4.1).
- The focus should be displayed consistently, i.e. it should be applied equally to as many interactive elements as possible.

As of WCAG 2.2, 📜-2.4.11 also applies.

### Responsibilities

- The design team defines an easily recognisable visual design for the focus.
- The development team correctly implements the specifications defined by the design team.

## Examples

```html
<!-- Generally very well perceptible focus -->
a:focus {
  outline: 2px dotted black;
}

<!-- Bad example: focus not perceptible in Windows High Contrast Mode (invert colours) -->
a:focus {
  colour: white;
  background-color: black;
}
```