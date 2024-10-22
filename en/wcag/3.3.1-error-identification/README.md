---
id: "54"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/error-identification.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.3.1 Error Identification - A

## Understanding (short)

**Error messages** for form entries must be **perceivable** on different perception channels and the associated **input fields** must be **identifiable**. This enables people with different disabilities to also perceive error messages and identify the corresponding form fields.

## Understanding (long)

If the system recognizes input errors when a form is filled out, the corresponding error messages must be visible to all users and the corresponding input fields must be identifiable.

For color highlighting, the usual requirements for contrasts apply, see [📜-1.4.3 Contrast (Minimum)](/en/wcag/1.4.3-contrast-minimum), or for color use see [📜-1.4.1 Use of Color](/en/wcag/1.4.1-use-of-color). But a purely visual change (e.g. red or thicker border around an incorrect input field, addition of an error symbol) is not sufficient, but always requires a note **in text form** so that cognitively impaired people can also understand it. Depending on the situation, best practices are:

- A general error message at the beginning of the form, e.g. "3 errors have occurred".
- Specific error messages directly at the incorrect input fields, e.g. "First name must be filled in".
    - These can also be placed as a list at the beginning of the form (preferably linked to the corresponding input fields).

**Important:** For screen reader users, spatial grouping is not sufficient to link an error message to the corresponding input field; there must be a link in the code. The simplest solution is to place the error messages (if possible) directly in the `<label>` element. Alternatively, they can be linked to the respective input field (or a surrounding `<fieldset>` element) using `aria-describedby`. The error message is then automatically output by the screen reader (in addition to the `<label>` element) as soon as the input field is focused on. For general information on handling forms, see also [📜-1.3.1c Forms, Labels and Fieldsets](/en/wcag/1.3.1c-forms-labels-and-fieldsets).

Screen readers must also be informed that error messages are displayed at all. To do this, set the focus directly to the first incorrect field after submitting the form, see [📜-2.4.3 Focus Order](/en/wcag/2.4.3-focus-order). You can also place a corresponding note in the `<title>` element (page title), see [📜-2.4.2 Page Titled](/en/wcag/2.4.2-page-titled). Sometimes a status message is also helpful, see [📜-4.1.3 Status Messages](/en/wcag/4.1.3-status-messages).

Client-side form validation can also be used, but is often not sufficient on its own, see [📜-3.3.3 Error Suggestion](/en/wcag/3.3.3-error-suggestion).

### Delimitation

- This success criterion ensures that errors can be **experienced** on different perception channels and that the associated input fields are **identifiable**.
- That they are **meaningful** (i.e. helpful for troubleshooting) is required by [📜-3.3.3 Error Suggestion](/en/wcag/3.3.3-error-suggestion).

### Responsibilities

- The design team defines an easily recognizable visual design for input errors.
- The development team correctly implements the specifications defined by the design team.

## Examples

```html
<!-- General error message -->
<p tabindex="-1">Unfortunately, we could not log you in.</p><!-- With JavaScript focus() for page refresh -->
<p aria-live="polite">Unfortunately, we could not log you in.</p><!-- For single-page app -->

<!-- Mandatory field -->
<label>
  First name: * <!-- Visual (asterisk) -->
  <input type="text" required="true"><!-- Semantic (required) -->
</label>
<p>Input fields with * are mandatory!</p>

<!-- Identification via description within the label -->
<label>
  Biography
  <textarea id="biography" type="text"></textarea>
  <p class="error">Please tell us something about your biography!</p>
</label>

<!-- Identification via description using aria-describedby -->
<label for="name">Name</label>
<input id="name" type="text" aria-describedby="name_description">
<p id="name_description" class="error">Please enter your name!</p>

<!-- Description of a group of radio buttons using aria-describedby -->
<fieldset aria-describedby="gender_description">
  <legend>Gender</legend>

  <input type="radio" id="gender_male" value="male"><label for="gender_male">Male</label>
  <input type="radio" id="gender_female" value="female"><label for="gender_female">Female</label>
  <input type="radio" id="gender_other"><label for="gender_other">Other</label>

  <p id="gender_description" class="error">Please tell us your gender!</p>
</fieldset>
```

## ✅ Checkpoints

- [✅ Error messages in forms](error-messages-in-forms)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#error-identification>
- <https://www.w3.org/WAI/WCAG22/quickref/#error-identification>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA2>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA21>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR18>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF5>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA19>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA21>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR18>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR32>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G139>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/3-3-1-fehlerkennung/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-3-1-fehlererkennung>

### Weiteres
- <https://wcag.com/developers/3-3-1-error-identification/>
- <https://www.wuhcag.com/error-identification/>
- <https://www.digitala11y.com/understanding-sc-3-3-1-error-identification/>