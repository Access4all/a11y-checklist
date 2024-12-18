---
id: "39"
wcag_criterion_id: "83"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-14 13:15:29"
---

# ✅ Spalten- oder Zeilentitel

WCAG-Kriterium: [📜 1.3.1d Tabellarische Daten](..)

## Beschreibung

Daten-Tabellen weisen Spalten- oder Zeilentitel (`<th>`) auf, idealerweise beides.

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Outline > "Show Element Tag Names" aktivieren > Outline Table Cells: Tabelle erkunden und prüfen, ob entsprechende `<th>`-Elemente vorhanden sind.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Tables Bookmarklet](/de/tags/tables-bookmarklet) ausführen
1. Sicherstellen, dass Zeilen- und Spalten-Header korrekt mit `<th>` ausgezeichnet sind
    - **🙂 Beispiel:** Eine Tabelle mit Adressen hat sowohl Spalten-Header (`<th>ID</th>`, <th>Vorname</th>, `<th>Nachname</th>`, `<th>PLZ</th>` etc.) als mind. ein Header pro Zeile, z.B. jeweils der Vor- und Nachname (<th>Hans</th> und `<th>Müller</th>`), und/oder die ID (`<th>1234</th>`), o.ä.
        - **😡 Beispiel:** Die Tabelle hat nur Spalten-Header (die Zeilen-Elemente sind alle nur als `<td>` ausgezeichnet, also `<td>Hans</td>`, `<td>Müller</td>`, `<td>1234</td>`, etc.)
            - ⚠️ Bei manchen Tabellen ist es schwierig, sinnvolle Zeilen-Elemente zu wählen, um sie als `<th>` auszuzeichnen (z.B. wenn eine Tabelle bloss Zahlenwerte aufweist → dann sollte es aber dennoch zumindest eine ID oder sowas geben). Wenn es aber wie im vorliegenden Fall recht offensichtlich ist, was ein `<th>` sein soll, dann bestehen wir auch darauf!
    - **🙄 Beispiel:** Eine Tabelle mit Länder-Infos hat zwar Zeilen-Header (z.B. `<th>Schweiz</th>`), aber gar keine "erste Zeile", welche als Spalten-Header ausgezeichnet werden könnte (also z.B. `<th>Land</th>, `<th>Einwohner</th>`, etc.)
        - ⚠️ Wir ermuntern unsere Kunden, Tabellen generell eine "erste Zeile" zu geben, um die Spalten zu beschriften.
    - **😡 Beispiel:** Eine Tabelle hat weder Spalten- noch Zeilen-Header

### Nachprüfen mit Screenreader

Bei zweifelhaftem Code (z.B. Einsatz von `role="table"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- Mit `T` zu Tabelle springen
- Mit `Ctrl`+`Alt`+`Pfeile` durch die Zellen navigieren (quasi wie in Excel) und sicherstellen, dass jeweils die korrekten Zeilen-Header angesagt werden

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar. Da man Tabellen aber nicht vertikal navigieren kann, muss man sich per Wischen entweder durch die gesamte Tabelle durcharbeiten; oder man streicht mit dem Finger über die Tabelle (also auch hoch und runter über Zeilen hinweg) und schaut, ob die Angaben des Screenreaders immer vollständig sind und Sinn machen.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, ob Zeilen- und Spaltentitel vorhanden sind und ob diese korrekt ausgegeben werden. Im Tag-Baum überprüfen, ob `<TH>`-Tags vorhanden sind.

## Details zum blinden Testen

Spalten- und Zeilen-Header von Tabellen sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Table-Demo auf MDN mit korrekten THs](images/table-demo-auf-mdn-mit-korrekten-ths.png)

![Tabelle in A4AA mit aktiviertem Tables-Bookmarklet](images/tabelle-in-a4aa-mit-aktiviertem-tables-bookmarklet.png)