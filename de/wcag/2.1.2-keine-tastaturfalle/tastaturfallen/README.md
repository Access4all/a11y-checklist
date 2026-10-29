---
id: "66"
wcag_criterion_id: "24"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-03-15 13:46:37"
---

# ✅ Tastaturfallen

WCAG-Kriterium: [📜 2.1.2 Keine Tastaturfalle - A](..)

## Beschreibung

Es treten keine Tastaturfallen auf. Alle Bedienelemente können mit der Tastatur erreicht und wieder verlassen werden. Die uneingeschränkte Navigation rückwärts mit `Shift`-`Tab` ist sichergestellt.

## Prüfmethode (in Kürze)

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass alle Elemente erreicht und wieder verlassen werden können.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit `Tab`-Taste durch die Seite navigieren und jeweils prüfen:
    - Können alle fokussierten Elemente (sowie Gruppen von Elementen) wieder verlassen werden?
        - **😡 Beispiel:** Bei `Tab` in einem online Code-Editor wird die aktuelle Zeile eingerückt.
        - **😡 Beispiel:** Bei `Tab` in einer Navigation (Link-Liste) springt der Fokus vom letzten Link zurück auf den ersten (bleibt innerhalb der Gruppe gefangen).
        - **🙂 Beispiel:** Der Fokus bleibt zwar auf die Inhalte eines gerade angezeigten Dialogs beschränkt, aber nach Bestätigen oder Abbrechen des Dialogs ist der Fokus wieder frei.
1. Mit `Shift`-`Tab` dasselbe rückwärts prüfen

## Prüfmethode für Mobile (Ergänzungen zu Web)

Wird oft vergessen, aber auch Mobile Apps müssen komplett mit Tastatur gesteuert werden können.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDFs nicht relevant.

## Details zum blinden Testen

Ansich kann das im Fokus-Modus (mit `Tab` navigieren) in gewissen Screenreadern (etwa [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader)) schon geprüft werden, aber es ist nicht unbedingt pragmatisch (da Sehende dies sowieso bemerken, wenn sie Tastatur-Bedienung prüfen, siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)).

## Screenshots typischer Fälle

### Fokus gefangen in Gruppe von Elementen

![Fokus bleibt gefangen in Unter-Navigation (Brack)](images/fokus-bleibt-gefangen-in-unter-navigation-brack.png)

Nach dem letzten Element "Ausverkauf" springt man direkt zurück zum ersten Element "IT & Multimedia".
