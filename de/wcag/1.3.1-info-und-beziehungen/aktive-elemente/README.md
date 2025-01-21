---
id: "21"
wcag_criterion_id: "11"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 12:18:53"
---

# ✅ Aktive Elemente

WCAG-Kriterium: [📜 1.3.1 Info und Beziehungen - A](..)

## Beschreibung

Aktive Elemente (z.B. der aktive Menüpunkt in einer Navigation) sind semantisch erkennbar ausgezeichnet, wenn sie visuell klar als aktiv erkennbar sind.

## Prüfmethode (in Kürze)

**Screenreader:** Erkunden und Ausgaben prüfen: Werden aktive Punkte als solche erkennbar ausgegeben?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) Navigationen und ähnliche Elemente lesen und bedienen (oder mit [🏷️ DOM Inspektor](/de/tags/dom-inspektor) direkt untersuchen)
1. Sicherstellen, dass aktive Navigations-Punkte als solche angesagt werden
    - **🙂 Beispiel:** Eine Seite hat eine Navigation im Kopfbereich; das aktuell gewählte Navigations-Element wird als "aktuelle Seite", "aktiv", "gewählt" o.ä. angesagt, siehe [🏷️ aria-current (aktuelles Element auszeichnen)](/de/tags/aria-current-aktuelles-element-auszeichnen)
        - ⚠️ Es geht hier **nicht** darum, dass beim aktiven Wählen eines Eintrags der Screenreader ein Feedback gibt!
        - **😡 Beispiel:** Das Navigations-Element ist zwar visuell klar als gewählt erkennbar, aber der Screenreader gibt keinen entsprechenden Hinweis.
    - **🙂 Beispiel:** Bei einer Prozess-Navigation wird der aktive Schritt als "aktiv" o.ä. angesagt
        - ⚠️ Es geht hier **nicht** darum, dass das Element insgesamt als Prozess-Navigation erkennbar ist mit Screenreader (dafür existiert [✅ Breadcrumbs und Prozessanzeigen](/de/wcag/1.3.1-info-und-beziehungen/breadcrumbs-und-prozessanzeigen))!
        - **😡 Beispiel:** Der Screenreader gibt keinen entsprechenden Hinweis.
    - **🙂 Beispiel:** Die Sprachauswahl einer Webseite beinhaltet mehrere Links zu unterschiedlichen Sprachversionen der Seite ("Zu Deutsch wechseln", "Switch to English", etc.); die aktuell gewählte Sprache wird als "aktiv" o.ä. angesagt)
        - "**🙄 Beispiel:** Manchmal wird die aktuell gewählte Sprache nicht mehr als Link umgesetzt; man könnte argumentieren, dass daraus ja bereits ersichtlich wird, dass es die aktive Sprache ist (weil alle anderen Sprachen weiterhin als Link angeboten werden), und dass deshalb ein Zusatz wie "aktive Seite" o.ä. überflüssig wäre → sich dies zu erschliessen benötigt aber eine gewisse kognitive Leistung, weshalb wir empfehlen, dennoch einen solchen Zusatz ("aktiv" o.ä.) zu setzen, egal ob es sich um einen Link handelt oder nicht

## Screenshots typischer Fälle

![Versteckter Text macht aktuellen Menüpunkt erkennbar im A4AA](images/versteckter-text-macht-aktuellen-menpunkt-erkennbar-im-a4aa.png)

![Markierung des aktuellen Menüpunkts mittels aria-current="page"](images/markierung-des-aktuellen-menpunkts-mittels-aria-currentpage.png)
