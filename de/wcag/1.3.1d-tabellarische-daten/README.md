---
id: "83"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1d Tabellarische Daten

## Verstehen (in Kürze)

**Tabellarische Daten** müssen als solche ausgezeichnet werden, inkl. **Zeilen-/Spaltentitel** sowie ggf. **Beschriftung** und **Zusammenfassung**. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), die einzelnen Informationen miteinander in Bezug zu setzen, die Daten sinnvoll anzukündigen sowie Navigation darin anzubieten.

## Verstehen (ausführlich)

Umfangreiche oder komplexe Datentabellen sollen über ein `<caption>`-Element beschriftet werden; dieses kann auch visuell versteckt sein. Über das `summary`-Attribut kann zudem eine Zusammenfassung für Screenreader gegeben werden.

Für die Beschriftung von Zeilen- und Spaltentiteln muss das `<th>`-Element eingesetzt werden; andere Formatierungen (wie etwa das `<strong>`-Element) reichen nicht. Es müssen zumindest Spalten- oder Zeilenüberschriften vorhanden sein, wenn möglich aber beides. Die Elemente `<thead>`, `<tbody>` und `<tfoot>` haben keinen Einfluss auf die Barrierefreiheit, können aber z.B. zur visuellen Gestaltung verwendet werden.

Komplexe semantische Strukturen innerhalb von Tabellen (etwa Überschriften `<h1>` bis `<h6>`) sind zu vermeiden. Leere Zeilen oder Spalten sind problematisch. Einzelne Zellen hingegen dürfen leer sein; visuell versteckter Text kann aber zu einem besseren Screenreader-Erlebnis führen.

**Empfehlung:** Setzen Sie Tabellen ausschliesslich für die Präsentation von Daten ein und nicht zum Layouten (also um Inhalte anders zu arrangieren).

### Überspannende Zellen

Das Überspannen von Zellen mittels `colspan` und `rowspan` muss zurückhaltend eingesetzt werden. Faustregel: Wenn diese Attribute pro Zeile oder Spalte höchstens einmal vorkommen, sind keine Probleme zu erwarten. Werden aber mehrere eingesetzt, so muss die Tabelle eingehend mit Screenreader getestet werden; ggf. sind dann weitere Optimierungen über Attribute wie `scope` oder `headers` angebracht.

Manchmal ist es aber der einfachere Weg, komplexe Tabellen in mehrere kleine Tabellen aufzuteilen (und mit `<caption>` sinnvoll zu benennen), um diese Problematik zu umgehen.

### Verantwortlichkeiten

- Das Entwicklungsteam versieht die Seitenbereiche und Funktionalitäten mit Tabellen. Es schafft zudem die notwendigen technischen Voraussetzungen für die Inhaltserstellung, etwa die Möglichkeit zum Definieren von Spalten- und Zeilentiteln innerhalb von Tabellen in einem WYSIWYG-Editor.
- Die Inhaltsverantwortlichen formatieren Tabellen korrekt.

## Beispiele

```html
<!-- Tabelle mit Zeilen- und Spaltentiteln -->
<table summary="Übersicht über einige der schönstens Städte der Schweiz">
  <!-- Visuell versteckt (für CSS siehe 1.3.1a) -->
  <caption class="visually-hidden">Drei Städte im Vergleich</caption>
  <tr>
    <th>Stadt</th>       <!-- Spaltentitel -->
    <th>Postleitzahl</th><!-- Spaltentitel -->
    <th>Sprache</th>     <!-- Spaltentitel -->
  </tr>
  <tr>
    <th>Zürich</th><!-- Zeilentitel -->
    <td>8000</td>
    <td>Deutsch</td>
  </tr>
  <tr>
    <th>Genf</th><!-- Zeilentitel -->
    <td>1200</td>
    <td>Deutsch</td>
  </tr>
  <!-- Weitere Zeilen... -->
</table>

<!-- Visuell leere Zellen -->
<table>
  <tr>
    <th>Name</th>
    <th>Wohnort</th>
  </tr>
  <tr>
    <th>Hans Muster</th>
    <td>Grünwil</td>
  </tr>
  <tr>
    <th>Maria Bernasconi</th>
    <td>
      <span class="visually-hidden">Keine Angabe</span><!-- Besser als leer; könnte auch ein Icon mit alt-Text sein -->
    </td>
  </tr>
  <!-- Weitere Zeilen... -->
</table>
```

## ✅ Checkpoints

- [✅ Tabellenüberschriften](tabellenueberschriften)
- [✅ Spalten- oder Zeilentitel](spalten-oder-zeilentitel)
- [✅ Tabelle semantisch korrekt](tabelle-semantisch-korrekt)
- [✅ Keine leeren Spalten oder Zeilen](keine-leeren-spalten-oder-zeilen)
- [✅ Überspannende Zellen](ueberspannende-zellen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H51>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H39>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H63>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H43>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF6>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF20>

## Referenzen (intern)

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1e-datentabellen-richtig-aufgebaut>
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-1-info-und-beziehungen/>

### Weiteres
- <https://adrianroselli.com/2023/02/avoid-spanning-table-headers.html> → Ich (Josua) habe das sehr ausführlich nachgeprüft und die obigen Empfehlungen daraus abgeleitet. Es ist und bleibt aber ein leidiges Thema, dass Screenreader bis heute Probleme damit haben, obwohl die Browser dies visuell eindeutig und korrekt darstellen.
- <https://www.boia.org/blog/how-to-build-accessible-tables>