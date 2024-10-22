---
id: "101"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/label-in-name.html"
created_at: "2019-11-10 20:24:51"
---

# 📜 2.5.3 Label in Name - A

## Understanding (short)

The **accessible labelling** of a control for assistive technologies (e.g. screen readers) must be **the same** as or include the **visually apparent labelling**. This allows people who see the controls visually but interact with them by voice, for example, to use them intuitively.

## Understanding (long)

Control elements such as links, buttons, checkboxes or input fields can be used via voice input by speaking the visible labelling. This also works in conjunction with commands (e.g. ‘Click log in’). However, if the visually visible labelling differs from the accessible labelling, operation using voice control, for example, is not possible or only possible in a roundabout way.

For control elements with labels that contain text or images of text the accessible name must contain the visible text. Sometimes hidden text is used to enhance visible labelling, often with the intention of helping people with disabilities. This is permitted if the visible labelling is included in one part of the accessible name, preferably at the beginning.

Graphic switches with a visually visible label, for example, are problematic if the text alternative does not correspond exactly to the visual label. This makes voice control impossible because the system does not respond to the visual label. The visible label ‘Accept terms and conditions’ of a checkbox could, for example, be replaced by ‘Accept terms and conditions’ in the stored accessible name. If ‘Click to accept terms and conditions’ is now dictated via voice input, this text is not included in the accessible name and the input fails.

The accessible label can differ from the visible label if it is defined via non-visible attributes, such as `alt` attributes for images, visually hidden (or visually not clearly assignable) `<label>` elements, attributes like `aria-label` and `aria-labelledby` (though not `aria-describedby`), etc. It is important to note that both `aria-label` and `aria-labelledby` overwrite any already existing accessible name (such as the content of a `<label>`-element).

### Responsibilities

- The development team ensures that all control elements fulfil the specifications. The visible character string must be contained completely and exactly in the accessible labelling. Additional text within these character strings is not permitted.
- The Content managers write labels for control elements they have created (e.g. login button in a form) in such a way that the visible labelling is also contained completely and precisely in the code. If the CMS does not offer the option to enter separately accessible labelling, the responsibility lies solely with the development team.

## Examples

```html
<!-- Issue: Shopping cart on image does not match alternative text -->
<button>
  <img src="shopping-cart.png" alt="Submit order">
</button>

<!-- Issue: Accessible name ("Submit") differs from the visually visible text ("Confirm") -->
<button aria-label="Submit">
  Confirm
</button>

<!-- Issue: Accessible name ("Accept the terms and conditions") differs from the visually visible text ("I accept the ") -->
<label for="accept_agb"> I accept the terms and conditions</label>
<input type="checkbox" id="accept_agb" aria-label="Accept the terms and conditions" />

<!-- OK: Visually visible text ("Log in") included in the accessible name ("Log in to user account") -->
<a href=‘...’ aria-label="Im User account login">
  Log in
</a>
```

## ✅ Checkpoints

- [✅ Accessible labelling](accessible-labelling)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#label-in-name>
- <https://www.w3.org/WAI/WCAG22/quickref/#label-in-name>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G208>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G211>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-5-3-sichtbare-beschriftung-teil-des-zugaenglichen-namens/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-5-3-sichtbare-beschriftung-teil-des-zugaenglichen-namens>

### Weiteres
- <https://www.wcag.com/authors/2-5-3-label-in-name/>
- <https://www.wuhcag.com/label-in-name/>
- <https://www.digitala11y.com/understanding-sc-2-5-3-label-in-name/>
- <https://www.boia.org/wcag2/cp/2.5.3>