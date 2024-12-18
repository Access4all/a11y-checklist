---
id: "106"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2020-07-13 11:46:23"
---

# 📜 1.3.1e Semantisch richtiges Markup

## Verstehen (in Kürze)

Unterschiedliche **Arten von Inhalt** müssen **als solche semantisch ausgezeichnet** werden, etwa als Paragraphen, Zitate, oder Code. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), die Elemente sinnvoll anzukündigen sowie Navigation innerhalb derselben anzubieten.

## Verstehen (ausführlich)

Text muss mit semantisch bedeutsamem Markup formatiert werden, z.B. mit `<cite>`, `<blockquote>`, `<code>`, `<sup>` und `<address>`. Leere solche Elemente sind zu vermeiden.

Paragrafen werden mit `<p>` formatiert. Zum Trennen von mehreren Paragrafen werden weitere `<p>`-Elemente verwendet, und nicht `<br>`.

Wenn Schriftvariationen eine inhaltliche Bedeutung haben, muss diese für alle erfahrbar sein. Da Screenreader zurückhaltend sind beim expliziten Benennen von semantischen Elementen und auch semantisch bedeutsame Elemente wie `<del>` (durchgestrichen) oder `<em>` (fett) nicht spezifisch ansagen, muss manchmal auf zusätzliche Techniken zurück gegriffen werden (etwa visuell versteckter Text).

**Wichtig:** Die Trennung zwischen Information mit Struktur (Inhalt und HTML) und Darstellung (CSS) muss gewährleistet sein. Markup ohne Bedeutung (wie etwa `<i>` und `<b>`) ist zu vermeiden.

### Verantwortlichkeiten

- Das Entwicklungsteam versieht die Seitenbereiche und Funktionalitäten mit semantisch bedeutsamem Markup. Es schafft zudem die notwendigen technischen Voraussetzungen für die Inhaltserstellung, etwa die Möglichkeit zum Definieren von entsprechenden Elementen in einem WYSIWYG-Editor.
- Die Inhaltsverantwortlichen formatieren Inhalte korrekt.

## Beispiele

```html
<!-- Zitat -->
<blockquote>
  "Ich bin ein Berliner." (John F. Kennedy)
</blockquote>

<!-- Betonung -->
<p>
  Wir müssen <em>jetzt</em> handeln, sonst ist es zu spät! <!-- Richtig -->
  Wir müssen <b>jetzt</b> handeln, sonst ist es zu spät!   <!-- Falsch -->
</p>

<!-- Falsch formatierte Absatztrennung -->
<p>
  Willkommen auf unserer Website!<br />
  <br />
  Wir freuen uns, Sie hier zu sehen.<br />
  <br />
  Bei Fragen kommen Sie gerne auf uns zu.
</p>

<!-- Kontaktinformation Autor / Inhaber -->
<address>
  Maria Bernasconi<br /><!-- Hier sind Zeilenumbrüche angebracht -->
  Mustergasse 123<br />
  1234 Grünwil<br />
  Schweiz
</address>
```

## ✅ Checkpoints

- [✅ Absätze semantisch korrekt](absaetze-semantisch-korrekt)
- [✅ Inhalte semantisch korrekt](inhalte-semantisch-korrekt)
- [✅ Leere Elemente](leere-elemente)
- [✅ Schriftformatierungen](schriftformatierungen)
- [✅ Zitate semantisch korrekt](zitate-semantisch-korrekt)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G115> UND <https://www.w3.org/WAI/WCAG22/Techniques/html/H49>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G117>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA24>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G138>
- <https://www.w3.org/WAI/WCAG22/Techniques/text/T1>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-1-info-und-beziehungen/>

### Weiteres
- <https://www.wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>
