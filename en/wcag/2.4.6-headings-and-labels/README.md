---
id: "39"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/headings-and-labels.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.4.6 Headings and Labels - AA

## Understanding (short)

**Headings and labels** must be **meaningful**. This enables good navigation within the content and the targeted use of the same.

## Understanding (long)

Headings must describe the corresponding web content in a sufficiently informative and correct way; this helps to differentiate and navigate the content. Common errors are, for example, buttons or headings on a page that are not very informative or have several of the same name. Please also note **📜-1.3.1a Headings structure** and **📜-2.5.3 Label in Name**.

Form elements must also be well labelled (using `<label>`, see **📜-1.3.1c Forms, Labels and Fieldsets**). A common error is input fields marked as mandatory with asterisk (`*`) alone (without other techniques such as the `required` attribute): this visually common convention has no meaning for assistive technologies.

**Recommendation:** If possible, avoid using the `title` attribute. This is not consistently displayed by assistive technologies (e.g. screen readers).



### External generated content

Inaccessible, externally generated content must be pointed out! For example, by placing a short (visually hidden) information directly before the corresponding content that non-accessible, externally generated content follows.

### Delimitation

- The present success criterion ensures that existing headings and labels are **meaningful**.
- It is not always necessary for headings to be **present** at all (however, headings are usually the best technique for naming and differentiating content); **📜-3.3.2 Labels or Instructions** requires that labels are **present** at all.
- That _headers_ are **semantically and hierarchically correctly implemented** is required by **📜-1.3.1a Headings structure**; that _labels_ are **semantically correctly implemented** (and thus linked to the input fields) is required by **📜-1.3.1c Forms, Labels and Fieldsets**.

### Responsibilities

- The design team defines meaningful names for generic headings and labels.
- The content managers label headings and labels in the content in a meaningful way.

## Examples

```html
<article>
  <h3>iPhone X</h3>
  <p>The iPhone X has the following features: ...</p>
  <button>Buy</button><!-- First "Buy" button -->
</article>

<article>
  <h3>iPhone XS</h3>
  <p>The iPhone XS...</p>
  <button>Buy</button><!-- Bad: second "Buy" button -->
</article>

<article>
  <h3>iPhone XS</h3>
  <p>The iPhone XS...</p>
  <button>
    <!-- Visually hidden (for CSS see 1.3.1a) -->
    <span class="visually-hidden">iPhone XS</span><!-- Better -->
    Buy
  </button>
</article>
```

## ✅ Checkpoints

- [✅ Headings and labels](headings-and-labels)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#headings-and-labels>
- <https://www.w3.org/WAI/WCAG22/quickref/#headings-and-labels>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G130>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G131>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-4-6-aussagekraeftige-ueberschriften-und-beschriftungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-6-aussagekraeftige-ueberschriften-und-beschriftungen>

### Weiteres
- <https://www.wcag.com/authors/2-4-6-headings-and-labels/>
- <https://www.digitala11y.com/headings-labels-understanding-sc-2-4-6/>
- <https://www.boia.org/wcag2/cp/2.4.6>