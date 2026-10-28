---
id: "31"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-14 12:27:30"
---

# ✅ Überschriften semantisch korrekt

WCAG-Kriterium: [📜 1.3.1a Überschriften-Struktur](..)

## Beschreibung

Überschriften sind semantisch korrekt mit dem Überschriften-Element (`<h1>` bis `<h6>`) ausgezeichnet.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen: Sind Überschriften als solche ausgezeichnet?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ H123 Bookmarklet](/de/tags/h123-bookmarklet) ausführen
1. Sicherstellen, dass alle Elemente, die wie Überschriften aussehen, auch als solche ausgezeichnet sind:
    - **🙂 Beispiel:** `<h1>Meine Hobbys</h1>`
    - **🙂 Beispiel:** `<h2>Inhalts-Navigation</h2>`
    - **🙄 Beispiel:** `<div role="heading" aria-level="1">Meine Hobbys</div>`
        - ⚠️ Ist zwar semantisch korrekt, aber wir drängen darauf, stets Standard-Elemente (`<h1>`, `<h2>`, etc.) zu verwenden!
    - **😡 Beispiel:** `<div class="h1">Meine Hobbys</div>`
    - **😡 Beispiel:** `<div style="text-size: 2em; font-weight: bold">Meine Hobbys</div>`
    - **😡 Beispiel:** `<strong>Meine Hobbys</strong>`

⚠️ Dies kann auch über den [🏷️ DOM Inspektor](/de/tags/dom-inspektor) geprüft werden:

- `Rechtsklick` auf Überschrift → `Untersuchen`
- In der DOM-Baumansicht werden entsprechende Infos über das Element angezeigt

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar; zu Prüfen mittels Überschriften-Navigation (im [🏷️ Rotor](/de/tags/rotor) aktivieren).

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, ob visuell als Überschriften erkennbare Texte als Überschriften getaggt sind.

## Details zum blinden Testen

Überschriften sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
