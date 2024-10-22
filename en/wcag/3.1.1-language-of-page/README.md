---
id: "43"
parent_id: "73"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/language-of-page.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.1.1 Language of Page - A

## Understanding (short)

**Websites** must have a **correct language declaration** (`long` attribute). This enables assistive devices (e.g. screen readers) to read out content with correct pronunciation.

## Understanding (long)

It is very important that the main language of a website is declared correctly. Otherwise, a screen reader would read out a German-language website in English, for example. This would make the content largely incomprehensible. Therefore, define the correct main language according to the respective language version.

The ‘lang’ attribute requires an ISO language code as a value. Normally this is a two-letter code such as ‘en’ for English (`<html lang=‘en’>`), but it can also be an extended code such as ‘en-gb’ for British English (`<html lang=‘en-gb’>`). If the website offers several languages, update the `lang` attribute accordingly when changing the language.

### Responsibilities

- The development team sets the correct declaration for the respective language.

## ✅ Checkpoints

- [✅ Declaration of language](declaration-of-language)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#language-of-page>
- <https://www.w3.org/WAI/WCAG22/quickref/#language-of-page>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H57>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF16>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF19>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/3-1-1-sprache-der-software/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-1-1-hauptsprache-angegeben>

### Weiteres
- <https://www.wcag.com/developers/3-1-1-language-of-a-page/>
- <https://www.wuhcag.com/language-of-page/>
- <https://www.digitala11y.com/understanding-sc-3-1-1-language-of-page/>
- <https://www.boia.org/wcag2/cp/3.1.1>