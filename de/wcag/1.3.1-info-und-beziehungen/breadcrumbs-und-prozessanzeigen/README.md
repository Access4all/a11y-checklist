---
id: "23"
wcag_criterion_id: "11"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 12:20:47"
---

# Prüfpunkt: Breadcrumbs und Prozessanzeigen

## Beschreibung

Breadcrumbs oder Prozessanzeigen sind auch nicht-visuell als solche erkennbar.

## Prüfmethode (in Kürze)

**Screenreader:** Erkunden und Ausgaben prüfen: Werden Elemente als solche erkennbar ausgegeben?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit **🏷️-13 NVDA Screenreader** Breadcrumbs und Prozessanzeigen lesen und bedienen (oder mit **🏷️-47 DOM Inspektor** direkt untersuchen)
1. Sicherstellen, dass die Elemente als solches verstanden werden können
    - **🙂 Beispiel:** Der Breadcrumb wird als solches Angesagt, z.B. "Sie befinden sich hier" o.ä. (etwa durch einen Text, eine Überschrift oder `aria-label`)
        - **🙄 Beispiel:** Auch "Breadcrumb" wäre okay, aber diesen Begriff kennt lange nicht jeder Nutzer!
        - **😡 Beispiel:** Es wird nur eine Liste von Links angesagt ohne genaueren Kontext
    - **🙂 Beispiel:** Die Prozessanzeige wird als solches Angesagt, z.B. "Prozess-Schritte" o.ä.
        - ⚠️ Während Breadcrumbs den aktuell aktiven Eintrag nicht semantisch hervorheben müssen (da das letzte Element in der Auflistung stets das aktuell aktive Element ist), werden bei Prozessanzeigen oft auch zukünftige Schritte bereits angezeigt; insofern ist es wichtig, dass der aktive Punkt semantisch hervorgehoben wird → dafür existiert **✅-21 Aktive Elemente**

## Screenshots typischer Fälle

![Breadcrumbs in A4AA](images/breadcrumbs-in-a4aa.png)

![Breadcrumbs auf Galaxus](images/breadcrumbs-auf-galaxus.png)