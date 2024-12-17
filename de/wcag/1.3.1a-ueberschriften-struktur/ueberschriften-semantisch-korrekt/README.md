---
id: "31"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
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
1. [🏷️ H123 Bookmarklet](/de/tags/werkzeuge/bookmarklets/h123-bookmarklet) ausführen
1. Sicherstellen, dass alle Elemente, die wie Überschriften aussehen, auch als solche ausgezeichnet sind:
    - **🙂 Beispiel:** `<h1>Meine Hobbys</h1>`
    - **🙂 Beispiel:** `<h2>Inhalts-Navigation</h2>`
    - **🙄 Beispiel:** `<div role="heading" aria-level="1">Meine Hobbys</div>`
        - ⚠️ Ist zwar semantisch korrekt, aber wir drängen darauf, stets Standard-Elemente (`<h1>`, `<h2>`, etc.) zu verwenden!
    - **😡 Beispiel:** `<div class="h1">Meine Hobbys</div>`
    - **😡 Beispiel:** `<div style="text-size: 2em; font-weight: bold">Meine Hobbys</div>`
    - **😡 Beispiel:** `<strong>Meine Hobbys</strong>`

⚠️ Dies kann auch über den [🏷️ DOM Inspektor](/de/tags/document-object-model-dom/dom-inspektor) geprüft werden:

- `Rechtsklick` auf Überschrift → `Untersuchen`
- In der DOM-Baumansicht werden entsprechende Infos über das Element angezeigt

## Screenshots typischer Fälle



## Videos

- [🎬 Überschrift nicht korrekt umgesetzt (P statt H) - Atupri](/videos/ueberschrift-nicht-korrekt-umgesetzt-p-statt-h-atupri)
- [🎬 Unvollständige Überschriften (kein H1, falsch umgesetzt, etc.) - Blick](/videos/unvollstaendige-ueberschriften-kein-h1-falsch-umgesetzt-etc-blick)
- [🎬 Unvollständige Überschriften (kein H1, falsch umgesetzt, etc.) - Brack](/videos/unvollstaendige-ueberschriften-kein-h1-falsch-umgesetzt-etc-brack)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - MySwitzerland](/videos/vorbildliche-ueberschriften-inkl-versteckte-myswitzerland)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - WOZ](/videos/vorbildliche-ueberschriften-inkl-versteckte-woz)