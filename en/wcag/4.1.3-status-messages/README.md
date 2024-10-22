---
id: "105"
parent_id: "77"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html"
created_at: "2019-11-10 20:26:08"
---

# 📜 4.1.3 Status Messages - AA

## Understanding (short)

**Status messages** (information about the success, progress or outcome of an action, or about errors that have occurred) must be **recognisable** by **assistive technologies** (e.g. screen readers). This will allow the automatic output of these messages without the need to manually search for them and potentially overlook them.

## Understanding (long)

Assistive technologies (e.g. screen readers) do not always monitor the entire page content. In cases where **part of the current page** changes (e.g. to display an error message), special measures must therefore be taken to ensure that these changes are still displayed.

Typically, these are status messages of the following type:

- "27 results found", e.g. when a filter is adjusted and the search results are automatically updated.
- ‘Please wait’ or ‘Page loading’, e.g. after submitting a search query.
- "Personal profile successfully saved", e.g. after updating and saving details in a user account.
- "2 products in shopping basket" or "Product added to shopping basket", e.g. when the number of products in a shopping basket is increased by clicking a button or a product is added to the shopping basket.
- "Book added to watchlist", e.g. if a bookmark function is available for products.
- "First name is a mandatory field" or "2 fields are incorrect", e.g. when checking a form on the client side (i.e. without reloading the page).
    - This is not recommended when leaving a field, but only when submitting the form (for the implementation of error messages, see also [📜-3.3.1 Error Identification](/en/wcag/3.3.1-error-identification) and [📜-3.3.3 Error Suggestion](/en/wcag/3.3.3-error-suggestion)).
- "The auction runs in 60 seconds", e.g. for an online auction.

**Important:** If such messages are **not** loaded into the current page (via JavaScript), but the entire page is reloaded, then these are **not** status messages. In such cases, no additional precautions are required.

### Live regions

An element can be output by assistive technologies using live regions (e.g. `aria-live=‘polite’` or `role=‘alert’`). However, use these with caution so as not to overload the audio channel: it is undesirable, for example, to regularly hear seemingly random status messages in the screen reader, as this can lead to undesirable overlapping and interruptions in the audio channel.

**Note:** In order for an element to be announced by assistive technologies, the focus can also be set on it (see [✅ Correct order](/en/wcag/1.3.2-meaningful-sequence/correct-order)). However, this only makes sense if the element is to be interacted with directly (e.g. when displaying a message "Your session will expire in 2 minutes; click here to extend!"). However, this is not appropriate for simple notifications (without any need for action).

### Single-page apps (SPAs)

It is unfavourable to declare extensive content (e.g. SPAs) completely as live regions, as screen reader users cannot process this "uninterruptedly in one go", but are quickly overwhelmed by such a flood of information. It is better, for example, to only display the introductory headline of an extensive container as a status message and leave it to the user to read further content manually.

### Responsibilities

- The development team ensures that status messages are implemented in such a way that they can be automatically recognised and output by assistive technologies (e.g. screen readers).

## Examples

```html
<!-- These elements are immediately output by screen readers when their content changes. -->
<p aria-live="polite">Please confirm that you have read the terms and conditions.</p>
<p role="alert">The auction will expire in 60 seconds.</p>
```

## ✅ Checkpoints

- [✅ Status messages](status-messages)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#status-messages>
- <https://www.w3.org/WAI/WCAG22/quickref/#status-messages>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA19>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G177>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G194>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA23>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G193>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/4-1-3-statusmeldungen-programmatisch-verfuegbar/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-4-1-3-statusmeldungen-programmatisch-verfuegbar>

### Weiteres
- <https://www.wcag.com/developers/4-1-3-status-messages/>
- <https://www.digitala11y.com/understanding-sc-4-1-3-status-messages/>
- <https://www.boia.org/blog/understanding-wcag-2-1-success-criterion-4-3-1-status-messages>