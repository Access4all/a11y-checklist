---
id: "23"
parent_id: "68"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/keyboard.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.1.1 Keyboard - A

## Understanding (short)

**Content and functionalities** must be able to **be accessed and operated with the keyboard alone**. This enables people who cannot use pointing devices (such as a mouse or touchscreen) to access all content and use all functions.

## Understanding (long)

Physically impaired people are often unable to use a mouse or similar pointing device and are reliant on the keyboard. Assistive input devices also use the keyboard as an interface. It is therefore necessary that all interactive elements of a page can also be reached and operated using a keyboard alone. This applies in particular to links, buttons and form elements; for JavaScript widgets of all kinds, you will find further information (including operation) under **📜-4.1.2a Advanced controls (widgets)**.

Pay particular attention to the following:

- Make sure that the focus is always clearly visible (see **📜-2.4.7 Focus Visible** and **📜-2.4.11 Focus Not Obscured (Minimum)**).
- It is best to use JavaScript events that are also triggered by the keyboard (such as `click`, but not `hover`).
- Pay attention to the order of the interactive elements and guide the focus sensibly (see **📜-2.4.3 Focus Order** and **📜-1.3.2 Meaningful Sequence**).
- Do not unnecessarily restrict the freedom of movement of the focus (see **📜-2.1.2 No Keyboard Trap**).
- Do not change the context automatically on focus or input (see **📜-3.2.1 On Focus** and **📜-3.2.2 On Input**).
- Offer alternatives for path-based or multi-point pointer gestures (see **📜-2.5.1 Pointer Gestures**) and drag & drop movements (see **📜-2.5.7 Dragging Movements**), as these are dependent on a pointing device (e.g. mouse).

### Standard HTML vs. JavaScript widgets

We recommend using standard HTML elements where possible, i.e. only using JavaScript widgets if HTML does not offer any corresponding functionality. Accordingly, a `<button>` is preferable to a `<div tabindex="0" onclick="...">`; the same applies, for example, to a `<select>` instead of a JavaScript dropdown.

Please also note the notes in **📜-4.1.2a Advanced controls (widgets)** in this regard!

### Responsibilities

- The design team defines JavaScript widgets with an eye to simplicity and usability using the keyboard.
- The development team correctly implements the specifications defined by the design team. If JavaScript widget libraries are used, they are first thoroughly checked for accessibility.
- Clients should be aware that the implementation of accessible JavaScript widgets can mean additional work.

## Examples

```html
<!-- HTML switch: good -->
<button>Submit</button>

<!-- Custom switch: bad -->
<span onclick='...'>Submit</span>

<!-- Event that cannot be triggered by the keyboard: bad -->
<span onhover='...'>Show tooltip</span>
```

## ✅ Checkpoints

- [✅ Operable with the keyboard](operable-with-the-keyboard)

## References public

### WCAG-Varianten

- <https://www.w3.org/TR/WCAG22/#keyboard>
- <https://www.w3.org/WAI/WCAG22/quickref/#keyboard>

### Techniken

- <https://www.w3.org/WAI/WCAG21/Techniques/html/H91>
- <https://www.w3.org/WAI/WCAG21/Techniques/general/G202>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF11>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF13>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF23>

## References internal

### BITV

- <https://www.bit-inklusiv.de/bitv-softwaretest/> → keine spezifischen Infos für dieses EK!
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-2-sinnvolle-dokumenttitel>

### Weiteres

- <https://www.wuhcag.com/page-titled/>
- <https://wcag.com/developers/2-1-1-keyboard/>
- <https://www.digitala11y.com/understanding-sc-2-1-1-keyboard/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/2-1-keyboard-accessible-level-a/#Guideline_21_Keyboard_Accessible>
- <https://webaim.org/techniques/keyboard/#testing>