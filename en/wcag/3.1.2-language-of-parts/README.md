---
id: "44"
parent_id: "73"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/language-of-parts.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.1.2 Language of Parts - AA

## Understanding (short)

**Language changes** (such as an English quote on an otherwise German-language page) must have a **correct language declaration** (`lang` attribute). This allows assistive devices (e.g. screen readers) to also read out this content with correct pronunciation.

## Understanding (long)

Language changes need to be indicated in long passages of text. Otherwise, screen readers will read content in a language other than the page language with the wrong emphasis, making the content unintelligible. For example, if the page language is German (`<html lang=‘de’>`) and there is a quote in English, this quote must be labelled accordingly (`<blockquote lang=‘en’>`).

**Note:** Avoid changing the language for a few single words or e.g. Anglicisms, as screen readers react with a slight delay and the faster, albeit incorrect, pronunciation of single words is often preferred.

### Responsibilities

- The development team creates the necessary technical requirements, such as a function for declaring a foreign language text passage in a WYSIWYG editor.
- The content managers create and maintain the relevant content as required.

## Examples

```html
<html lang=‘de’><!-- German is the main language -->
  <body>
    <h1>My favourite songs</h1><!-- Song is an anglicism -->

    <p>
      <!-- ‘All time Favourites’ is too short for a language change to be appropriate -->
      In the following some of my all time favourites:
    </p>

    <ul>
      <li>Griechischer Wein (Udo Jürgens)</li>
      <li lang=‘en’>Yellow submarine (The Beates)</li><!--  Language change to English -->
      <li lang=‘fr’>Nathalie (Gilbert Bécaud)</li><!-- Language change to French -->
      <li lang=‘de-ch’>S Zundhölzli (Mani Matter)</li><!-- Language change to Swiss German -->
    </ul>
  </body>
</html>
```

## ✅ Checkpoints

- [✅ Language change](language-change)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#language-of-parts>
- <https://www.w3.org/WAI/WCAG22/quickref/#language-of-parts>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H58>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF19>

## References internal

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-1-2-anderssprachige-woerter-und-abschnitte-ausgezeichnet>

### Weiteres
- <https://www.wcag.com/developers/3-1-2-language-of-parts/>
- <https://www.digitala11y.com/understanding-sc-3-1-2-language-of-parts/>
- <https://www.boia.org/wcag2/cp/3.1.2>
