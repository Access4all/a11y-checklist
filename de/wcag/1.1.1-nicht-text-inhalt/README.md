---
id: "1"
parent_id: "63"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/non-text-content.html"
created_at: "2015-08-04 14:35:59"
---

# 📜 1.1.1 Nicht-Text-Inhalt - A

## Verstehen (in Kürze)

Informative **grafische Elemente** müssen mit einem möglichst gleichwertigen **Alternativtext** beschrieben sein. Dies ermöglicht Menschen mit Sehbehinderungen, sich die Bedeutung jener grafischen Elemente vorlesen zu lassen.

## Verstehen (ausführlich)

Formulieren Sie Beschreibungen hilfreich, kurz und prägnant; vermeiden Sie Redundanz. Sprengt die Beschreibung den vorgesehenen Rahmen (etwa die Länge des `alt`-Attributs beim Beschreiben eines Organigramms), so kann auf den umgebenden Text oder verlinkte Inhalte ausgewichen und darauf hingewiesen werden (das `longdesc`-Attribut ist mittlerweile aber veraltet). Das `alt`-Attribut sollte die Länge von ca. 100 Zeichen nicht deutlich überschreiten.

**Wichtig:** Informative Bilder müssen so umgesetzt sein, dass sie auch bei geändertem oder entferntem CSS (z.B. angewandten Nutzerstyles) sichtbar bleiben: `background: url(...)` ist entsprechend keine Option, `<img src="...">` hingegen schon.

**Hinweis:** Einzelne Schriftzeichen werden manchmal als Symbole eingesetzt (z.B. "-10%" bei einer Rabatt-Werbung); es existieren hierfür sogar spezielle Symbol-Schriftarten (Webfonts). Solche Schriftzeichen müssen durch Screenreader ebenfalls sinnvoll ausgegeben werden (ggf. empfiehlt es sich, diese explizit mit einem `aria-label` zu überschreiben). Dasselbe gilt für Emojis.

### Ausnahmen

Die folgenden Fälle können nicht gleichwertig in Text verfasst werden. Beschreiben Sie trotzdem so gut wie möglich deren Sinn:

- Tests und Übungen, wenn eine exakte Beschreibung dieselben ungültig macht (bei Tafeln zu Farbfehlsichtigkeit wäre dies z.B. "Testtafel zur Erkennung von Farbfehlsichtigkeit").
- Inhalte, die eine bestimmte Sinneserfahrung schaffen (bei einem Stereogramm wäre dies z.B. "Stereogramm zweier Delfine").
- Bei CAPTCHAs werden Textalternativen bereitgestellt, die den Zweck desselben identifizieren, etwa "Visuelles CAPTCHA, Alternativen siehe unten". Ausserdem werden alternative Formen von CAPTCHAs bereitgestellt, etwa eine auditive Variante.

Folgende grafische Elemente sollen so implementiert werden, dass sie von assistierender Technik ignoriert werden können, etwa mittels leerem `alt`-Attribut oder `display: none`:

- Der Inhalt ist reine Dekoration (z.B. ein Stimmungsbild bei einer Werbung) oder redundant (z.B. ein Warenkorbsymbol in einem mit "Warenkorb" beschrifteten Link).
- Der Inhalt wird nur für visuelle Formatierung benutzt (z.B. Abstandhalter).
- Der Inhalt ist für alle Benutzer unsichtbar.

### Andere Nicht-Text-Inhalte

- Für Video oder Audio fügen Sie eine kurze Beschreibung des Themas hinzu, so dass deren Zweck bereits vor dem Abspielen erkennbar ist (z.B. "Interview mit der Bundesrätin"). Beachten Sie zudem 📜-1.2.
- Für Steuerelemente (Formulare, JavaScript-Widgets) stellen Sie ein aussagekräftiges Label zur Verfügung (z.B. "Vorname"). Beachten Sie zudem [📜-4.1.2 Name, Rolle, Wert](/de/wcag/4.1.2-name-rolle-wert).

### Verantwortlichkeiten

- Das Entwicklungsteam schafft die notwendigen technischen Voraussetzungen, etwa ein Feld für das Erfassen eines Alternativtexts beim Hochladen eines Bildes.
- Die Inhaltsverantwortlichen erstellen und warten die entsprechenden Inhalte anforderungsgemäss.
- Auftraggebende sollten sich bewusst sein, dass das Beschreiben von komplexen grafischen Inhalten einen gewissen Zusatzaufwand mit sich bringt.

## Beispiele

```html
<!-- Porträt in Liste von Angestellten -->
<img src="maria.jpg" alt="Porträt Maria Bernasconi, Verwaltungsrätin" />

<!-- Komplexes Organigramm -->
<img src="organigramm.jpg" alt="Organigramm der Verwaltung. Erläuterung nachfolgend." />
<p>Kopf der Verwaltung ist Hans Huber. Ihm unterstehen...</p>

<!-- Firmenlogo -->
<img src="logo.png" alt="Logo ACME Inc." />

<!-- Firmenlogo verlinkt zur Startseite -->
<a href="/">
  <img src="logo.png" alt="Logo ACME Inc., zur Startseite" />
</a>

<!-- Schlecht: Firmenlogo als CSS-Hintergrund -->
<a href="/">
  <span style="background-image: url(logo.png)" />
</a>

<!-- Bild von Text -->
<img src="willkommen.jpg" alt="Willkommen auf unserer Website!">

<!-- Allein stehendes Symbol -->
<a href="...">
  <img src="warenkorb.png" alt="Warenkorb" />
</a>

<!-- Redundantes Symbol -->
<a href="...">
  <img src="warenkorb.png" alt="" />
  Warenkorb
</a>

<!-- Schriftzeichen-Symbol mit aria-label -->
<p>
  <span aria-label="Minus 10 Prozent">-10%</span> Rabatt!
</p>

<!-- SVG -->
<svg role="img"><!-- Rolle ist notwendig (ohne wird SVG nicht als Grafik erkannt) -->
  <title>Was sagt der Fuchs?</title>
  ...
</svg>

<!-- Video per iFrame -->
<iframe src="https://www.youtube.com/embed/xyz" title="Werbevideo XYZ"></iframe>
```

## ✅ Checkpoints

- [✅ Informative Grafiken](informative-grafiken)
- [✅ Titel von Video- und Audio](titel-von-video-und-audio)
- [✅ Grafische Tests und Übungen](grafische-tests-und-uebungen)
- [✅ Sensorische Nicht-Text-Inhalte](sensorische-nicht-text-inhalte)
- [✅ Grafische Symbole](grafische-symbole)
- [✅ Verlinkte Grafiken](verlinkte-grafiken)
- [✅ Redundanz in Alternativtexten](redundanz-in-alternativtexten)
- [✅ Grafische Schalter](grafische-schalter)
- [✅ Hochkontrast-Modus](hochkontrast-modus)
- [✅ Verlinktes Seiten-Logo](verlinktes-seiten-logo)
- [✅ Sonderzeichen](sonderzeichen)
- [✅ Komplexe Grafiken](komplexe-grafiken)
- [✅ Dekorative Grafiken](dekorative-grafiken)
- [✅ Grafische CAPTCHAs](grafische-captchas)

## Referenzen (öffentlich)

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

## Referenzen (intern)

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
