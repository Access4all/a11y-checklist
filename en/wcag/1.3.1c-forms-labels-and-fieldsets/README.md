---
id: "80"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1c Forms, Labels and Fieldsets

## Understanding (short)

**Form fields** must have **correctly connected labels and instructions**, and **sections** of larger forms and related radio buttons and checkboxes must be **grouped**. This enables assistive technologies (e.g. screen readers) to announce the individual elements correctly so that they can be interacted with.

## Understanding (long)

Form fields (such as text fields or checkboxes) must have a correctly connected label, typically the `<label>` element: it must either wrap the form field or be connected to it using the `for` attribute. Only a single `<label>` per input field is recommended.

The `placeholder` attribute, on the other hand, should be used with caution, as it has a number of problems (e.g. it disappears on input, assistive technologies do not interpret it uniformly, and the contrast situation in differentiation from entered text is also difficult).

### Creation of sections

For more extensive forms, the `<fieldset>`/`<legend>` combination is suitable for grouping elements that belong together; checkboxes and radio buttons should also be grouped with this. `<fieldset>`/`<legend>` combinations can be nested. A `<legend>` may contain plain text or a heading (e.g. `<h3>`).

We also recommend splitting extensive forms into several pages (process steps).

### Instructions in forms

A heading (e.g. `<h1>`) at the beginning of a form makes sense. However, if there are to be further instructions (e.g. paragraphs, lists, etc.) **between** the input fields, these must be connected to the relevant elements using `aria-describedby`, otherwise they will be missed by the screen reader when "tabbing":

- General introductory content (paragraphs, lists...) can be connected to the surrounding `<fieldset>`.
- Specific notes (e.g. the format requirements for a password) can be conntected to the respective input field.
- The same applies to error messages for incorrect input (e.g. "The password requires at least 1 special character").
    - After submitting an incorrectly completed form, the keyboard focus should also be set to the first incorrect input field; see also **📜-2.4.3 Focus Order**.

We recommend being cautious with instructions in forms; for more detailed information, for example, you can link to a separate page or display it via dialog (**✅-103 Dialogs**) or accordion (**✅-100 TRANSLATION MISSING**).

### Delimitation

- This success criterion ensures that existing labels and instructions in forms are **correctly implemented** (and thus connected to the input fields)
- That they **exist** at all is required by **📜-3.3.2 Labels or Instructions**
- That they are **meaningful** is required by **📜-2.4.6 Headings and Labels**.

### Responsibilities

- The design team is aware that complex forms are not trivial to implement. It tries to avoid complexity: for example, by dividing a form into several process steps and by avoiding excessive explanatory text between the input fields
- The development team provides all form fields with correct labels and meaningful groupings. Additional information (such as error messages) is also connected.

## Examples

```html
<!-- Typical form -->
<form action="...">
  <fieldset><!-- First grouping -->
    <legend>
      Delivery address
    </legend>

    <label for="first_name">
      First name:
    </label>
    <input type="text" id="first_name" />

    <label for="last_name">
      Last name:
    </label>
    <input type="text" id="last_name" />

    <label><!-- Label wraps around input field -->
      <input type="checkbox" />
      Yes, I am of legal age.
    </label>
  </fieldset>

  <fieldset><!-- Second grouping -->
    <legend>
      Billing address
    </legend>

    <!-- Other fields -->

  </fieldset>
</form>

<!-- Radiobuttons / Checkboxen -->
<fieldset>
  <legend>
    Gender
  </legend>

  <label>
    <input type="radio" name="female" />
    Female
  </label>

  <label>
    <input type="radio" name="male" />
    Male
  </label>

  <label>
    <input type="radio" name="other" />
    Other
  </label>
</fieldset>

<!-- Zusätzliche Information verknüpfen -->
<input aria-describedby="password_help" type="password" />
<p id="password_help">
  The password must be at least 8 characters long.
</p>
```

## ✅ Checkpoints

- [✅ Feldset / Legend](feldset-legend)
- [✅ Text elements between input fields](text-elements-between-input-fields)
- [✅ Form fields Labels](form-fields-labels)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H44>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H65>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H71>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF10>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF12>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-1-info-und-beziehungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1h-beschriftung-von-formularelementen-programmatisch-ermittelbar>

### Weiteres
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>