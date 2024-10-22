---
id: "55"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/labels-or-instructions.html"
created_at: "2015-08-04 14:36:00"
---

# 3.3.2 Labels or Instructions - A

## Understanding (short)

**Labels and instructions in forms** must be **provided**. This promotes the recognition and understanding of input fields so that cognitively impaired people can also fill them in as required.

## Understanding (long)

If instructions describe a form in more detail (e.g. information on the input format or whether a field requires an entry), these must be visible to all users and the associated input field must be identifiable. Spatial grouping is not sufficient for visually impaired people with screen readers.

Use the techniques presented in **📜-3.3.1 Error Identification** for the `<label>` element and `aria-describedby` attribute. Make sure that labels remain visible even when input is entered: a `placeholder` attribute alone is not sufficient, as it disappears when input is entered. Specific input formats and conventions must be explained, for example if an asterisk (`*`) is used to designate mandatory fields, or if a password must have a specific format. See also **📜-1.3.1c Forms, Labels and Fieldsets** on the handling of forms in general.


### Responsibilities

- The design team defines an easily recognizable visual design for labels and instructions
- The development team correctly implements the specifications defined by the design team.

### Delimitation

- This success criterion ensures that labels and instructions **exist**.
- That they are **meaningful** is required by **📜-2.4.6 Headings and Labels**.
- That they are correctly implemented (and thus linked to the input fields) is required by **📜-1.3.1c Forms, Labels and Fieldsets**.

## Examples

```html
<!-- Description of the mandatory field asterisk (*) using hidden text -->
<form>
  <label for=“name”>
    Name
    <span class=“required”>*</span>
    <span class=“visually-hidden”>(Pflichtfeld)</span><!-- visually-hidden (for CSS see 1.3.1a) -->
  </label>
  <input id=“name” type=“text” />

  <p>
    <span class=“required”>*</span>
    Mandatory field
  </p>
</form>

<!-- Description of the mandatory field asterisk (*) using aria-describedby -->
<form>
  <label for=“name”>
    Name
    <span class=“required”>*</span>
  </label>
  <input aria-describedby=“required-description” id=“name” type=“text” />

  <p id=“required-description”>
    <span class=“required”>*</span>
    Mandatory field
  </p>
</form>

<!-- Description of an input format using aria-describedby -->
<form>
  <label for=“password”>
    Password
  </label>
  <input aria-describedby=“password-description” id=“name” type=“password” />

  <p id=“password-description”>
    Use at least 8 capital and lowercase letters, numbers and special characters.
  </p>
</form>

<!-- Description of the mandatory field using the required attribute -->
<form>
  <label for=“name”>
    Name
    <span class=“required”>*</span>
  </label>
  <input required id=“name” type=“text” />

  <p>
    <span class=“required”>*</span>
    Mandatory field
  </p>
</form>
```

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#labels-or-instructions>
- <https://www.w3.org/WAI/WCAG22/quickref/#labels-or-instructions>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G131>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA1>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA9>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA17>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G89>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G184>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G162>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H90>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF5>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H44>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF10>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H71>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G167>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/3-3-2-beschriftungen-oder-anweisungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-3-2-beschriftungen-von-formularelementen-vorhanden>

### Weiteres
- <https://wcag.com/developers/3-3-2-labels-instructions/>
- <https://www.wuhcag.com/labels-or-instructions/>
- <https://www.digitala11y.com/understanding-sc-3-3-2-labels-or-instructions/>