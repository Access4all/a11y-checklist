---
id: "76"
wcag_criterion_id: "36"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-03-15 13:55:44"
---

# ✅ Elemente korrekt verstecken

WCAG-Kriterium: [📜 2.4.3 Fokus-Reihenfolge - A](..)

## Beschreibung

Elemente sind korrekt versteckt und zwar so, dass sie auch durch assistierende Technologien nicht ausgegeben werden, wenn sie visuell nicht sichtbar sind.

## Prüfmethode (in Kürze)

**Screenreader:** Inhalte erkunden und prüfen, ob sie erwartungsgemäss ausgegeben werden.

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass keine visuell versteckten Elemente fokussiert werden können.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ NerdeFocus Extension](/de/tags/nerdefocus-extension) aktivieren
1. Mit `Tab`-Taste durch die Seite navigieren
    - Sicher stellen, dass der Fokus sich nie links oder rechts aus dem Viewport hinaus bewegt (siehe [🏷️ Inhalte rein visuell verstecken](/de/tags/inhalte-rein-visuell-verstecken)).
        - **😡 Beispiel:** Fokussierbare Elemente wurden aus dem Viewport verschoben (z.B. ein Hamburger-Menü, welcher per Knopfdruck in den sichtbaren Bereich hinein schwebt) → ⚠️ Das Menü (bzw. dessen beinhaltete Links) ist aber weiterhin fokussierbar, was dazu führt, dass der Fokus sich komplett aus dem sichtbaren Bereich (Viewport) heraus bewegt.
            - ⚠️ Hier muss stattdessen auf `display: none` (oder `visibility: hidden`) zurück gegriffen werden!
            - ⚠️ Rein lesbare (nicht fokussierbare) Inhalte, welche nur für Screenreader relevant sind, dürfen natürlich schon aus dem Viewport verschoben werden

## Prüfmethode für Mobile (Ergänzungen zu Web)

Kann sowohl in nativen / hybriden Mobile Apps vorkommen, wie auch auf Mobile Webseiten.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDFs nicht relevant.

## Details zum blinden Testen

In seltenen Fällen kann zwar auch blind erahnt werden, dass Elemente nicht korrekt versteckt wurden (weil sie per Screenreader erreichbar sind, dies aber wahrscheinlich nicht sein sollten). Man ist dabei aber stets begrenzt auf Mutmassung.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
