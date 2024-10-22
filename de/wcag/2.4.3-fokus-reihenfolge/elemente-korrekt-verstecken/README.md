---
id: "76"
wcag_criterion_id: "36"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 13:55:44"
---

# Prüfpunkt: Elemente korrekt verstecken

## Beschreibung

Elemente sind korrekt versteckt und zwar so, dass sie auch durch assistierende Technologien nicht ausgegeben werden, wenn sie visuell nicht sichtbar sind.

## Prüfmethode (in Kürze)

**Screenreader:** Inhalte erkunden und prüfen, ob sie erwartungsgemäss ausgegeben werden.

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass keine visuell versteckten Elemente fokussiert werden können.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. **🏷️-22 NerdeFocus Extension** aktivieren
1. Mit `Tab`-Taste durch die Seite navigieren
    - Sicher stellen, dass der Fokus sich nie links oder rechts aus dem Viewport hinaus bewegt (siehe **🏷️-4 Inhalte rein visuell verstecken**).
        - **😡 Beispiel:** Fokussierbare Elemente wurden aus dem Viewport verschoben (z.B. ein Hamburger-Menü, welcher per Knopfdruck in den sichtbaren Bereich hinein schwebt) → ⚠️ Das Menü (bzw. dessen beinhaltete Links) ist aber weiterhin fokussierbar, was dazu führt, dass der Fokus sich komplett aus dem sichtbaren Bereich (Viewport) heraus bewegt.
            - ⚠️ Hier muss stattdessen auf `display: none` (oder `visibility: hidden`) zurück gegriffen werden!
            - ⚠️ Rein lesbare (nicht fokussierbare) Inhalte, welche nur für Screenreader relevant sind, dürfen natürlich schon aus dem Viewport verschoben werden

## Screenshots typischer Fälle
