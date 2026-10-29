---
id: "25"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-14 12:22:50"
---

# ✅ Hierarchie existierender Überschriften

WCAG-Kriterium: [📜 1.3.1a Überschriften-Struktur](..)

## Beschreibung

Die Hierarchie der Überschriften-Ebenen ist inhaltlich-logisch korrekt und vermittelt die Struktur der Inhalte.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen: Ist die Hierarchie in sich logisch korrekt?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ H123 Bookmarklet](/de/tags/h123-bookmarklet) ausführen
1. Sicherstellen, dass Hierarchie der Überschriften inhaltlich korrekt
    - ⚠️ Es geht hier darum, dass die **existierende** Überschriften-Struktur Sinn macht (und nicht, ob z.B. Überschriften fehlen o.ä. → auch wenn fehlende Überschriften natürlich schnell zu sinnfreien Überschriften-Strukturen führen)
    - **🙂 Beispiel:** Auf `<h1>Meine Hobbys</h1>` folgen `<h2>Fussball spielen</h2>` und `<h2>Kochen</h2>`
    - **🙂 Beispiel:** Auf `<h2>Navigation</h2>` folgen `<h3>Inhalts-Navigation</h3>` und `<h3>Nutzer-Navigation (Login)</h3>`
    - **😡 Beispiel:** Auf `<h1>Meine Hobbys</h1>` folgen `<h1>Fussball spielen</h1>` und `<h1>Kochen</h1>`
    - **😡 Beispiel:** Auf `<h2>Navigation</h2>` folgen `<h1>Inhalts-Navigation</h1>` und `<h2>Nutzer-Navigation (Login)</h2>`

### Nachprüfen mit Screenreader

Bei zweifelhaftem Code (z.B. Einsatz von `role="heading"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- `Insert`+`F7` zum Anzeigen der Elementliste
- Dann `Alt`+`H` für Überschriften

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Auf Web-Views 1:1 übertragbar; zu prüfen mittels Überschriften-Navigation (im [🏷️ Rotor](/de/tags/rotor) aktivieren).

In nativen Apps hingegen gibt es semantisch nur eine Überschriften-Stufe (auch wenn Überschriften visuell unterschiedlich dargestellt werden können).

## Prüfmethode für PDF (Ergänzungen zu Web)

In PDFs können (und müssen) Überschriften ebenfalls korrekt getaggt werden (H1 bis H6).

WICHTIG: Screenreader-Nutzende nehmen die Inhalte in einem PDF nicht seitenweise wahr. Für die Struktur orientieren sich Screenreader-Nutzende nur am Tag-Baum. Deshalb braucht nicht jede PDF-Seite eine eigene Überschrift. Inhalte, die einer Überschrift untergeordnet sind, können sich über mehrere PDF-Seiten erstrecken.

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen

## Details zum blinden Testen

Überschriften sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Sehr detaillierte Überschriften-Hierarchie auf WOZ in h123](images/sehr-detaillierte-berschriften-hierarchie-auf-woz.png)

![Dieselbe Hierarchie in NVDA](images/dieselbe-hierarchie-in-nvda.png)
