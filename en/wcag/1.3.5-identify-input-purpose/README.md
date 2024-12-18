---
id: "89"
parent_id: "65"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/identify-input-purpose.html"
created_at: "2019-11-10 20:19:06"
---

# 📜 1.3.5 Identify Input Purpose - AA

## Understanding (short)

For forms containing **personal data**, the input purpose of the corresponding form fields must be machine-readable (`autocomplete` attribute). This allows them to be filled in automatically, which is particularly useful for people with cognitive and motor disabilities.

## Understanding (long)

All people, but especially those with cognitive disabilities, benefit from clearly labelled input fields. People with motor disabilities benefit from the automatic completion of form fields because it reduces the need for fine motor movements. Program-based methods can recognise the purpose of an input field and provide answers.

In order for user agents (e.g. browsers) to be able to fill in form fields automatically, the correct use of the ‘autocomplete’ attribute is required. This ensures that the fields for which the data is already available can be pre-filled in the programme.

**Important:** This only applies to form fields that collect data about the person. An exhaustive list of possible values can be found at <https://www.w3.org/TR/WCAG22/#input-purposes>.

**Note:** Both missing and incorrect `autocomplete` attributes (e.g. `autocomplete=‘birthday’` instead of `autocomplete=‘bday’`) violate this success criterion.

### Responsibilities

- The development team assigns the appropriate `autocomplete` attribute to each form field that collects data about the person completing the form and is listed in the list of available values.

## Examples

```html
<!-- For fields that require first and last names-->

<label for=‘first_name’>first name:</label> <input id=‘first_name’ autocomplete=‘given-name’ />
<label for=‘last_name’>last name:</label> <input id=‘last_name’ autocomplete=‘family-name’ />
```

## ✅ Checkpoints

- [✅ Automatic completion](automatic-completion)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#identify-input-purpose>
- <https://www.w3.org/WAI/WCAG22/quickref/#identify-input-purpose>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H98>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-5-eingabezweck-bestimmen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-5-eingabefelder-zu-nutzerdaten-vermitteln-den-zweck>

### Weiteres
- <https://www.wcag.com/developers/1-3-5-identify-input-purpose/>
- <https://www.digitala11y.com/what-are-the-autocomplete-attributes-defined-in-1-3-5-input-purpose/>
