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

## Beschreibung

Überschriften sind semantisch korrekt mit dem Überschriften-Element (`<h1>` bis `<h6>`) ausgezeichnet.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen: Sind Überschriften als solche ausgezeichnet?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. **🏷️-1 H123 Bookmarklet** ausführen
1. Sicherstellen, dass alle Elemente, die wie Überschriften aussehen, auch als solche ausgezeichnet sind:
    - **🙂 Beispiel:** `<h1>Meine Hobbys</h1>`
    - **🙂 Beispiel:** `<h2>Inhalts-Navigation</h2>`
    - **🙄 Beispiel:** `<div role="heading" aria-level="1">Meine Hobbys</div>`
        - ⚠️ Ist zwar semantisch korrekt, aber wir drängen darauf, stets Standard-Elemente (`<h1>`, `<h2>`, etc.) zu verwenden!
    - **😡 Beispiel:** `<div class="h1">Meine Hobbys</div>`
    - **😡 Beispiel:** `<div style="text-size: 2em; font-weight: bold">Meine Hobbys</div>`
    - **😡 Beispiel:** `<strong>Meine Hobbys</strong>`

⚠️ Dies kann auch über den **🏷️-47 DOM Inspektor** geprüft werden:

- `Rechtsklick` auf Überschrift → `Untersuchen`
- In der DOM-Baumansicht werden entsprechende Infos über das Element angezeigt

## Screenshots typischer Fälle

