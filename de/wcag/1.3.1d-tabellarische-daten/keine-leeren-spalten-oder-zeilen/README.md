---
id: "41"
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
created_at: "2024-03-14 13:17:53"
---

# ✅ Keine leeren Spalten oder Zeilen

WCAG-Kriterium: [📜 1.3.1d Tabellarische Daten](..)

## Beschreibung

Daten-Tabellen weisen keine leeren Spalten oder Zeilen auf.

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Outline > "Show Element Tag Names" aktivieren > Outline Table Cells: Tabelle erkunden und prüfen, ob keine leeren Spalten oder Zeilen vorhanden sind.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Tables Bookmarklet](/de/tags/tables-bookmarklet) ausführen
1. Sicherstellen, dass keine leeren Zeilen und Spalten vorhanden sind
    - **🙂 Beispiel:** Eine Tabelle hat in jeder Zeile und Spalte mind. eine nicht-leere Zelle
    - **😡 Beispiel:** Eine Tabelle hat mind. eine leere Zeilen oder Spalte
        - ⚠️ Probleme dieser Art rühren oft daher, dass Tabellen entweder nicht sinnvoll eingesetzt werden (z.B. Layout-Tabellen), dass ihre Inhalte nicht optimal aufbereitet sind, oder dass Inhalte zwar vorhanden **wären**, aber mit Screenreader nicht erfahren werden können (z.B. Icons ohne alt-Text, siehe [✅ Informative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/informative-grafiken))

### Nachprüfen mit Screenreader

Bei zweifelhaftem Code (z.B. Einsatz von `role="table"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- Mit `T` zu Tabelle springen
- Mit `Ctrl`+`Alt`+`Pfeile` durch die Zellen navigieren (quasi wie in Excel) und sicherstellen, dass jeweils die korrekten Zeilen-Header angesagt werden

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar. Da man Tabellen aber nicht vertikal navigieren kann, ist dieser Prüfpunkt auf Mobile ggf. schwierig zu beurteilen.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, dass keine leeren Zeilen oder Spalten vorhanden sind.

## Details zum blinden Testen

Korrekte Umsetzung von Tabellen ist für Blinde besonders wichtig!

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
