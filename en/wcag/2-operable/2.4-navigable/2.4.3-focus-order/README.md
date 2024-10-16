---
id: "36"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-order.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.3 Focus Order - A

## Understanding (short)

**Focusable elements** must be lined up in a **meaningful sequence** and the **focus** must be **meaningfully guided**. This enables people who only use a keyboard to navigate intuitively and quickly between these elements and interact with them.

## Understanding (long)

People who interact with a website using the keyboard move their focus through the interactive elements in their sequential order (see 📜-2.1.1). Make sure that the order of the focus is intuitive and that the focus jumps from element to element in a comprehensible way (according to the visual arrangement) when tabbing through the individual elements.

Normally, the arrangement of the elements in the DOM determines the order (see 📜-1.3.2). If this is to be overridden, the `tabindex` attribute can be used, but this is generally not recommended.

Also make it easier to navigate using the keyboard by intelligently guiding the focus (e.g. via JavaScript or `autofocus` attribute). For example, when opening a modal dialog (✅-103), set the focus directly into it; prevent it from jumping back into the darkened background; and set the focus back to the previous element when the dialog is closed. Be careful, however, that no keyboard trap occurs (see 📜-2.1.2).

Focus guidance can also be appropriate in forms. For example, when submitting an incorrectly completed form, place the focus directly on the first incorrect input field (see 📜-3.3.1). As a guideline: what does the user want to interact with next?

Also avoid the focus being visually "lost" (e.g. because invisible elements can be focused, see also 📜-2.4.11) or unexpectedly being reset to the top of the page (e.g. because the previously focused element was suddenly removed from the DOM).

### Responsibilities

- The development team arranges all the elements on the page as expected and sensibly guides the focus of the interactive elements.

### Delimitation

- This success criterion ensures that **manual overriding** of the DOM sequence for the focus sequence makes sense.
- That the DOM order be **meaningful in itself** is required by 📜-1.3.2.

## Examples

```html
<form action="...">
<!-- Various input fields, e.g. name, first name, address... -->

<button type="submit">Order products</button>

<!-- Important information below the submit button! -->
<p>By submitting this form you confirm that you have read our <a href="...">Terms and Conditions</a>.</p>
</form>
```