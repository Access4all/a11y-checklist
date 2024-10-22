---
id: "18"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/images-of-text.html"
created_at: "2015-08-04 14:36:00"
---

# 1.4.5 Bilder von Text - AA

## Verstehen (in Kürze)

**Texte** sind **nicht als Grafiken** eingebunden. Dies ermöglicht die uneingeschränkte Verarbeitung und Präsentation derselben.

## Verstehen (ausführlich)

Wenn Texte als Grafiken (etwa mittels des `<img>`-Elements) eingebunden sind, dann erschwert dies das Lesen derselben für Menschen mit einer Sehbebeeinträchtigung, da sie diese nicht ihren individuellen Bedürfnissen anpassen können (z.B. Grösse skalieren ohne Qualitätseinbusse, Vorder- und Hintergrundfarben sowie Abstände oder Schriftart verändern, etc.).

Ausgenommen sind Texte, bei welchen die besondere Art der Präsentation unentbehrlich ist für die vermittelte Information (z.B. bei Logos oder Markennamen), sowie Texte, die Teil eines Bildes oder Diagramms mit zusätzlichem visuellem Inhalt sind (etwa Labels eines Diagramms). Eine akkurate Beschriftung derselben ist dann notwendig, siehe **📜-1.1.1 Nicht-Text-Inhalt**.

**Hinweis:** Die Möglichkeiten von modernem HTML (etwa individuelle Schriftarten und SVG) machen den Einsatz von Schriftgrafiken kaum mehr notwendig.

### Verantwortlichkeiten

- Das Designteam definiert visuelle Elemente auf Basis der technischen Möglichkeiten (etwa HTML und SVG).
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Die Inhaltsverantwortlichen gestalten Inhalte als Text und verzichten auf Schriftgrafiken. Sind solche trotzdem notwendig, so werden sie mit Alternativtext akurat beschrieben.

## Beispiele

```html
<!-- Kann legitim sein: Logo mit speziellem Schriftzug -->
<img src="logo.png" alt="Logo XYZ" />

<!-- Nicht mehr legitim, seit man beliebige Schriftarten in HTML einbetten kann -->
<h1>
  <img src="welcome.png" alt="Willkommen auf unserer Webseite!" />
</h1>
```

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#images-of-text>
- <https://www.w3.org/WAI/WCAG22/quickref/#images-of-text>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C22>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C30>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G140>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF7>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C12>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C14>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C6>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C13>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-5-schriftgrafiken/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-5-schriftgrafiken>

### Weiteres
- <https://www.wcag.com/designers/1-4-5-images-of-text/>
- <https://www.digitala11y.com/understanding-sc-1-4-5-image-of-text/>
- <https://www.boia.org/wcag2/cp/1.4.5>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_145_Images_of_Text>