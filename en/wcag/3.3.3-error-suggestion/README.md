---
id: "56"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/error-suggestion.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.3.3 Error Suggestion - AA

## Understanding (short)

**Error messages for form input** must be **meaningful** and (if possible) offer **help** to correct them. This enables the targeted correction of input errors, which is of particular benefit to people with cognitive disabilities.

## Understanding (long)

If errors are detected automatically and specific error messages are possible (e.g. about unfilled mandatory fields, non-compliance with format specifications, etc.), then error messages must be specific and informative.

Use the techniques presented in **📜-3.3.1 Error Identification** for the `<label>` element and `aria-describedby` attribute.

If necessary, give specific examples of how a field should be filled in. This helps to correct the errors in a targeted manner. General error messages such as "An error has occurred" are not permitted if the cause of the error is known.

Some examples of meaningful messages are:

- "The password must consist of at least 8 characters"
- "The password must contain special characters, such as $, @ or +"
- "The date must be entered in the format DD.MM.YYYY, e.g. 24.11.2020"
- "The login is invalid, please check user and password"
- "Please fill in this field"
- "The form could not be processed for technical reasons, please try again later"

Avoid general collective messages such as "Passwords must be 8 characters long, contain upper and lower case letters and special characters", as it may not be clear which of the messages actually require a correction of the input. Instead, be specific and issue a separate message for each error found.

**Note:** It is recommended to provide error messages directly next to each affected form field so that the assignments are immediately understandable. However, it is also possible to display all error messages at the top of the form as a list; ideally, each error message is then implemented as an anchor link to the corresponding input field. See also **📜-1.3.1c Forms, Labels and Fieldsets** for the handling of forms in general.

### Responsibilities

- The design team defines meaningful error messages and corresponding assistance.
- The development team correctly implements the specifications defined by the design team.

### Delimitation

- This success criterion ensures that existing error messages are **meaningful** (i.e. helpful for troubleshooting)
- The fact that errors can be **experienced** on different perception channels and that the associated input fields are **identifiable** is required by **📜-3.3.1 Error Identification**.

## Examples

See **📜-3.3.1 Error Identification** and **📜-3.3.2 Labels or Instructions**.

## ✅ Checkpoints

- [✅ Informative error messages](informative-error-messages)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#error-suggestion>
- <https://www.w3.org/WAI/WCAG22/quickref/#error-suggestion>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF22>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G177>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G139>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/3-3-3-fehlerbehebung/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-3-3-hilfe-bei-fehlern>

### Weiteres
- <https://www.wcag.com/designers/3-3-3-error-suggestion/>
- <https://www.digitala11y.com/understanding-sc-3-3-3-error-suggestion/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/3-3-input-assistance-level-aa-and-aaa/#Success_Criterion_333_Error_Suggestion>