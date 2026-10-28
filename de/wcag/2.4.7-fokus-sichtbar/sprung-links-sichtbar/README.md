---
id: "82"
wcag_criterion_id: "40"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-03-15 14:00:37"
video_ids: "[]"
---

# ✅ Sprung-Links sichtbar

WCAG-Kriterium: [📜 2.4.7 Fokus sichtbar - AA](..)

## Beschreibung

Sprung-Links werden bei Tastatur-Bedienung sichtbar.

## Prüfmethode (in Kürze)

**Tastatur:** Nach Seiten-Laden direkt die Tab-Taste drücken und darauf achten, ob angewähltes Element ein Sprunglink ist, und ob er wie erwartet angezeigt wird.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. `Tab`-Taste einmal drücken und prüfen:
    - Wird ein (zuvor nicht sichtbarer, nun fokussierter) Link angezeigt, der das direkte Anspringen der Seiten-Inhalts erlaubt?
        - **🙂 Beispiel:** Link "Zum Inhalt springen"
        - **😡 Beispiel:** Kein solcher Link
    - Es können weitere solche Links bei erneutem Drücken der `Tab`-Taste angeboten werden (z.B. "Zur Suche springen"), relevant ist aber nur ein Sprung-Link für den Inhalt.
1. Link aktivieren und prüfen:
    - Wurde der Fokus tatsächlich zum Inhalt verschoben?
        - Dies ist manchmal visuell erkennbar (etwa durch Verschieben des Viewports oder durch einen aktivierten Fokus-Style), ist aber nicht zwingend
        - Wird bei nochmaligen Drücken von `Tab` nun tatsächlich durch den Inhalt navigiert?
            - **🙂 Beispiel:** Der Fokus springt auf das erste interaktive Element im Inhalt (z.B. einen Link).
            - **😡 Beispiel:** Der Viewport hat sich zwar wie gewünscht zum Inhalt verschoben, aber der Fokus springt sozusagen zurück an den Anfang der Seite.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Ist mir etwas unklar: wenn jegliche Webseite auf einem Mobile angeschaut werden kann und Tastatur-Bedienbarkeit auch bei Mobile ein Thema ist, dann müssten wohl auch Skip-Links auf Mobile angezeigt werden, oder?

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDFs nicht relevant.

## Details zum blinden Testen

Das Vorhanden-Sein solcher Links kann zwar geprüft werden, aber deren Sichtbarkeit bei Fokus nicht (oder nicht sinnvoll).

## Screenshots typischer Fälle

![Sichtbarer Sprunglink auf GitHub](images/sichtbarer-sprunglink-auf-github.png)

## Videos

Keine Videos verfügbar.
