---
id: "1"
parent_id: "63"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/non-text-content.html"
created_at: "2015-08-04 14:35:59"
---

# 📜 1.1.1 Non-text Content - A

## Understanding (short)

Informative **graphic elements** must be described with an **alternative text** that is as equivalent as possible. This enables people with visual impairments to have the meaning of those graphic elements read out to them.

## Understanding (long)

Write descriptions in a helpful, short and concise way; avoid redundancy. If the description exceeds the intended scope (e.g. the length of the `alt` attribute when describing an organization chart), you can refer to the surrounding text or linked content (e.g. the `longdesc` attribute) and point this out. The `alt` attribute should not significantly exceed the length of approx. 100 characters.

**Important:** Informative images must be implemented in such a way that they remain visible even if the CSS is changed or removed (e.g. when user styles are applied): `background: url(...)` is therefore not an option, whereas `<img src="...">` is.

**Note:** Individual characters are sometimes used as symbols (e.g. "-10%" in a discount advertisement); there are even special symbol fonts (web fonts) for this purpose. Such characters must also be output by screen readers in a meaningful way (it may be advisable to explicitly overwrite them with an `aria-label`). The same applies to the use of emojis.

### Exceptions

The following cases cannot be written in text in the same way. Nevertheless, describe their meaning as good as possible:

- Tests and exercises, if an exact description would invalidate them (for example, in the case of color vision deficiency charts, this would be "Test chart for detecting color vision deficiency")
- Content that creates a specific sensory experience (for example, in the case of a stereogram, this would be "Stereogram of two dolphins")
- For CAPTCHAs, text alternatives are provided that identify the purpose of the CAPTCHA, such as "Visual CAPTCHA, see below for alternatives". In addition, alternative forms of CAPTCHAs must be provided, such as an auditory version.

The following graphical elements should be implemented in such a way that they can be ignored by assistive technology, for example by means of an empty `alt` attribute or `display: none`:

- The content is purely decorative (e.g. a mood image in an advertisement) or redundant (e.g. a shopping cart symbol in a link labeled "shopping cart")
- The content is only used for visual formatting (e.g. spacers)
- The content is invisible to all users.

### Other non-text content

- For video or audio, add a short description of the topic so that its purpose can be recognized before playback (e.g. "Interview with the Federal Councillor"). Please also note 📜-1.2.
- For control elements (forms, JavaScript widgets), provide a meaningful label (e.g. "First name"). Please also note [📜-4.1.2 Name, Role, Value](/en/wcag/4.1.2-name-role-value).

### Responsibilities

- The development team creates the necessary technical requirements, such as a field for entering an alternative text when uploading an image
- The content managers create and maintain the corresponding content as required
- Clients should be aware that describing complex graphic content involves a certain amount of additional work.

## Examples

```html
<!-- Portrait in list of employees -->
<img src="maria.jpg" alt="Portrait of Maria Bernasconi, Member of the Board of Directors" />

<!-- Complex organization chart -->
<img src="organization-chart.jpg" alt="Organization chart of the administration. Explanation below." />
<p>The head of the administration is Hans Huber. He is responsible for...</p>

<!-- Company logo -->
<img src="logo.png" alt="Logo ACME Inc." />

<!-- Company logo linked to the homepage -->
<a href="/">
  <img src="logo.png" alt="Logo ACME Inc., to homepage" />
</a>

<!-- Bad: Company logo as CSS background -->
<a href="/">
  <span style="background-image: url(logo.png)" />
</a>

<!-- Image of text -->
<img src="welcome.jpg" alt="Welcome to our website!">

<!-- Stand-alone symbol -->
<a href="...">
  <img src="shopping-cart.png" alt="Shopping cart" />
</a>

<!-- Redundant symbol -->
<a href="...">
  <img src="shopping-cart.png" alt="" />
  Shopping cart
</a>

<!-- Character symbol with aria-label -->
<p>
  <span aria-label="Minus 10 percent">-10%</span> discount!
</p>

<!-- SVG -->
<svg role="img"><!-- Role is necessary (without it, SVG is not recognized as a graphic) -->
  <title>What does the fox say?</title>
  ...
</svg>

<!-- Video via iFrame -->
<iframe src="https://www.youtube.com/embed/xyz" title="Promotional video XYZ"></iframe>
```

## ✅ Checkpoints

- [✅ Informative graphics](informative-graphics)
- [✅ Video and audio titles](video-and-audio-titles)
- [✅ Graphical tests and exercises](graphical-tests-and-exercises)
- [✅ Sensory non-text content](sensory-non-text-content)
- [✅ Graphic symbols](graphic-symbols)
- [✅ Linked graphics](linked-graphics)
- [✅ Redundancy in alternative texts](redundancy-in-alternative-texts)
- [✅ Graphic buttons](graphic-buttons)
- [✅ High contrast mode](high-contrast-mode)
- [✅ Linked page logo](linked-page-logo)
- [✅ Special characters](special-characters)
- [✅ Complex graphics](complex-graphics)
- [✅ Decorative graphics](decorative-graphics)
- [✅ Graphical CAPTCHAs](graphical-captchas)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#non-text-content>
- <https://www.w3.org/WAI/WCAG22/quickref/#non-text-content>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G94>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA6>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA10>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G196>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H2>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H37>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H53>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H86>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF1>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G95>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA15>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G73>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G74>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G92>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H53>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G82>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA9>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H24>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H30>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H36>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H44>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H65>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G68>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G100>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G143>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G144>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C9>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H67>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF4>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/1-1-1-nicht-text-inhalte/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-1-1a-alternativtexte-fuer-bedienelemente>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-1-1b-alternativtexte-fuer-grafiken-und-objekte>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-1-1c-leere-alt-attribute-fuer-layoutgrafiken>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-1-1d-alternativen-fuer-captchas>

### Weitere
- <https://www.smashingmagazine.com/2021/05/accessible-svg-patterns-comparison/>
- <https://www.wcag.com/authors/1-1-1-non-text-content/>
- <https://www.wuhcag.com/non-text-content/>
- <https://www.digitala11y.com/understanding-sc-1-1-1-non-text-content/>
- <https://www.boia.org/wcag2/cp/1.1.1>