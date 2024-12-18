---
id: "78"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1b Aufzählungen und Listen

## Verstehen (in Kürze)

Gruppen von **kleinen, ähnlichen Elementen** müssen korrekt **als Listen** ausgezeichnet sein. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), diese zu erfassen und eine schnelle Übersicht sowie Navigation darin anzubieten.

## Verstehen (ausführlich)

Listen (`<ul>` und `<ol>`) sowie Glossare (`<dl>`) sind wichtige Elemente der semantischen Gruppierung und Gliederung von beispielsweise Links, Produkten, Menüeinträgen etc. Sie ermöglichen es, den Anfang und das Ende der Gruppen sowie die Gesamtzahl enthaltener Elemente zu erkennen und darin zu navigieren.

Listenelemente können sowohl horizontal (nebeneinander, z.B. Social-Media-Kanäle) als auch vertikal (untereinander, z.B. eine Seitennavigation) angeordnet sein. Das Verwenden von Plain-Text-Bindestrichen am Anfang einer Textzeile ist keine "echte" Liste.

Listen mit einem einzigen Eintrag sollten vermieden werden (ausser sie werden automatisch generiert). Listen können verschachtelt werden, etwa für Untermenüs.

**Wichtig:** Listen eignen sich zum Gruppieren kleiner Elemente. Für umfangreichere Elemente eignen sich `<article>` oder `<section>` besser; wie etwa News-Teaser, die jeweils z.B. aus Titel, Datum, Bild, Text, etc. bestehen (siehe auch [✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}).

### Verantwortlichkeiten

- Das Entwicklungsteam versieht die Seitenbereiche und Funktionalitäten mit Listen. Es schafft zudem die notwendigen technischen Voraussetzungen für die Inhaltserstellung, etwa die Möglichkeit zum Wählen verschiedener Listenarten als Formatvorlagen in einem WYSIWYG-Editor.
- Die Inhaltsverantwortlichen formatieren Listen korrekt.

## Beispiele

```html
<!-- Linkliste -->
<ul>
  <li>Sitemap</li>
  <li>Legal Disclaimer</li>
  <li>RSS Feed</li>
</ul>

<!-- Verschachteltes Menü -->
<ul>
  <li>Startseite</li>
  <li><a href="...">Produkte</a>
    <ul>
      <li><a href="...">Computer</a></li>
      <li><a href="...">Fernseher</a></li>
      <li><a href="...">Kühlschränke</a></li>
    </ul>
  </li>
  <li>Kontakt</li>
</ul>

<!-- Falsche Liste (nicht zugänglich) -->
<p>
  - Zimmer aufräumen<br />
  - Einkaufen gehen<br />
  - Abendessen kochen<br />
</p>
```

## ✅ Checkpoints

- [✅ Aufzählungen semantisch korrekt](aufzaehlungen-semantisch-korrekt)
- [✅ Listen mit nur einem Eintrag](listen-mit-nur-einem-eintrag)
- [✅ Glossare](glossare)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H48>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF21>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-1-info-und-beziehungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1b-html-strukturelemente-fuer-listen>

### Weiteres
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>
