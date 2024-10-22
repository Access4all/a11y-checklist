---
id: "87"
parent_id: "61"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/name-role-value"
created_at: "2016-01-28 13:28:43"
---

# 4.1.2a Advanced controls (widgets)

## Understanding (short)

**Extended controls** (JavaScript widgets) must be programmed in such a way that their **purpose**, **operation** and the corresponding **states can be recognised by software**. This enables the unrestricted use of these elements by assistive technologies (e.g. screen readers).

## Understanding (long)

### Standard HTML vs. JavaScript widgets

Even though standard HTML offers many useful controls, some more sophisticated controls (JavaScript widgets), which are often required in current interactive websites, are missing: Examples include tabs (**✅-106 Tabs / tablists**), accordions (**✅-100 TRANSLATION MISSING**), dropdowns (**✅-104 Disclosure (pop-up elements)**), tooltips (**✅-107 QuickInfos / Toggletips**), etc.

**Important:** We recommend using standard HTML elements whenever possible and resorting to JavaScript widgets only when HTML does not offer the required functionality. Accordingly, a `<button>` is preferable to a `<div role="button">`, and the same applies to a `<select>` instead of a JavaScript dropdown.

HTML-standard elements are offered by all browsers "by defaul" barrier-free. The accessibility of widgets, on the other hand, is the responsibility of the programmer. Usually, widgets are not just accessible, instead accessibility must first be "created" with special precautions (and corresponding effort).


### ARIA (Accessible Rich Internet Applications)

ARIA offers various roles (e.g. `role="tablist"`), attributes and states (e.g. `aria-selected="rue"`). This allows both standard and various non-standard control elements to be semantically enriched in such a way that they can be made accessible and operable by assistive technologies (e.g. screen readers). The basis for this is always solid keyboard operability, see **📜-2.1.1 Keyboard**.

The [ARIA Specification](https://www.w3.org/WAI/standards-guidelines/aria/) for accessible web applications from the Web Accessibility Initiative (WAI) describes the available options; specific use cases are demonstrated in the [ARIA Authoring Practices Guide (APG)](https://www.w3.org/WAI/ARIA/apg/patterns/).

The implementation of control elements using ARIA is not trivial, because the required roles, states and attributes (and the interaction of their sometimes quite complex combinations) must be implemented completely and correctly.

In addition, current browsers and assistive technologies do not recognise all available roles, states and attributes. In some cases, they are interpreted differently (or incorrectly). This sometimes makes it difficult to implement a control element in a consistently accessible way on all common combinations of input and output devices. Such elements can quickly become inaccessible on other platforms (e.g. on mobile devices).

When specifying a user interface, we therefore recommend carefully considering whether the desired functionality actually requires the use of such widgets. In any case, you should look for ways to simplify the intended functionalities so that they can be implemented using the standard HTML controls. Many seemingly complex requirements that at first glance appear to require the use of widgets can be broken down into simpler sub-requirements: an autocomplete (**✅-101 Autocompletes (comboboxes)**), for example, can be a simple text field that filters a group of underlying radio buttons.

In addition, many implementations attempt to exactly imitate the functionality of existing standard HTML controls, usually due to special visual design requirements. Whether the expected implementation effort is justified for such visual details must be weighed up.

**Caution:** Many JavaScript widget libraries on offer claim to be optimised for accessibility. This is often misleading, as views on accessibility and target platforms can differ. You should therefore always ensure the accessibility of such libraries yourself in advance.

**Note:** Keyboard focus guidance is often important for JavaScript widgets (see also **📜-2.1.1 Keyboard** and **📜-2.4.3 Focus Order**). Feedback to assistive technologies is also essential: this is often already sufficiently ensured with good focus guidance. However, it can also be achieved by using live regions (e.g. `role="alert"`); but use these with caution so as not to overload the audio channel (see also **📜-4.1.3 Status Messages**).

### Responsibilities

- The design team defines JavaScript widgets with a focus on simplicity and usability using assistive technologies.
- The development team correctly implements the specifications defined by the design team. If JavaScript widget libraries are used, they are first analysed in detail for accessibility.
- Clients should be aware that the implementation of accessible JavaScript widgets can mean additional work.

## Checkpoints

- [TRANSLATION MISSING](translation-missing)
- [Autocompletes (comboboxes)](autocompletes-comboboxes)
- [Date picker / time picker](date-picker-time-picker)
- [Dialogs](dialogs)
- [Disclosure (pop-up elements)](disclosure-pop-up-elements)
- [Carousels](carousels)
- [Tabs / tablists](tabs-tablists)
- [QuickInfos / Toggletips](quickinfos-toggletips)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#name-role-value>
- <https://www.w3.org/WAI/WCAG22/quickref/#name-role-value>