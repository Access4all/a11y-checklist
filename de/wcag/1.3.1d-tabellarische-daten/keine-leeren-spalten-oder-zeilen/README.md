---
id: "41"
wcag_criterion_id: "83"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
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
1. [🏷️ Tables Bookmarklet](/de/tags/werkzeuge/bookmarklets/tables-bookmarklet) ausführen
1. Sicherstellen, dass keine leeren Zeilen und Spalten vorhanden sind
    - **🙂 Beispiel:** Eine Tabelle hat in jeder Zeile und Spalte mind. eine nicht-leere Zelle
    - **😡 Beispiel:** Eine Tabelle hat mind. eine leere Zeilen oder Spalte
        - ⚠️ Probleme dieser Art rühren oft daher, dass Tabellen entweder nicht sinnvoll eingesetzt werden (z.B. Layout-Tabellen), dass ihre Inhalte nicht optimal aufbereitet sind, oder dass Inhalte zwar vorhanden **wären**, aber mit Screenreader nicht erfahren werden können (z.B. Icons ohne alt-Text, siehe [✅ Informative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/informative-grafiken))

### Nachprüfen mit Screenreader

Bei zweifelhaftem Code (z.B. Einsatz von `role="table"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/werkzeuge/screenreader/desktop-screenreader/nvda-screenreader) nachgeprüft werden:

- Mit `T` zu Tabelle springen
- Mit `Ctrl`+`Alt`+`Pfeile` durch die Zellen navigieren (quasi wie in Excel) und sicherstellen, dass jeweils die korrekten Zeilen-Header angesagt werden

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Screenshots typischer Fälle

