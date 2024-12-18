---
id: "73"
wcag_criterion_id: "36"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 13:52:07"
---

# ✅ Fokus-Reihenfolge

WCAG-Kriterium: [📜 2.4.3 Fokus-Reihenfolge - A](..)

## Beschreibung

Die Fokus-Reihenfolge ist sinnvoll, d. h. intuitiv verständlich und nachvollziehbar.

## Prüfmethode (in Kürze)

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass die Reihenfolge der Elemente sinnvoll ist.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit `Tab`-Taste durch die Seite navigieren
    - Falls Fokus schlecht (oder gar nicht) sichtbar → [🏷️ NerdeFocus Extension](/de/tags/nerdefocus-extension) aktivieren
1. Jeweils prüfen:
    - Ist die Reihenfolge der interaktiven Elemente sinnvoll?
        - **🙂 Beispiel:** Die Fokus-Reihenfolge deckt sich mehrheitlich mit der visuellen Lese-Reihefolge.
        - **😡 Beispiel:** Die Fokus-Reihenfolge wirkt unvorhersehbar (springt z.B. zwischen unterschiedlichen Seiten-Bereichen hin und her).
        - **🙂 Beispiel:** Formular-Felder sind sinnvoll aneinander gereiht.
        - **😡 Beispiel:** In einem Formular befinden sich unterhalb eines Abschicken-Schalters relevante Informationen (etwa ein Link zu den AGBs).
            - ⚠️ Hier darf die visuelle Reihenfolge von der Fokus-Reihenfolge abweichen! Visuell darf sich solche Information auch mal unterhalb des Formulars befinden (wenn auch meines Erachtens wenig sinnvoll); Hauptsache, die Fokus-Reihenfolge stimmt insofern, dass ein solcher AGBs-Link vor dem Abschicken-Schalter kommt!
        - **😡 Beispiel:** Ein Cookies-Banner wird angezeigt, aber der Fokus wird nicht hinein gesetzt.
1. Mit `Shift`-`Tab` dasselbe rückwärts prüfen

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
