---
id: "29"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 12:26:12"
---

# ✅ Überschriften vor zugehörigen Inhalten

WCAG-Kriterium: [📜 1.3.1a Überschriften-Struktur](..)

## Beschreibung

Überschriften sind im Code vor den ihnen zugehörigen Inhalten platziert.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen. Zur Sicherheit mit Screenreader nachprüfen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) ausführen
1. Mit `H` zu Überschriften navigieren und mit `Runter` sicherstellen, dass sich Überschriften vor den ihnen zugehörenden Inhalten befinden:
    - ⚠️ Konkret bedeutet das, dass die Überschrift sich im DOM vor den Inhalten befinden muss; visuell kann dies anders sein (mittels CSS leicht änderbar z.B. via Flexbox oder Grid)
    - **🙂 Beispiel:** Im Haupt-Inhalt nach `<h1>Meine Hobbys</h1>` folgen Paragrafen und Bilder, Sub-Überschriften (`<h2>`), Links etc. zum Thema Hobbys.
    - **🙂 Beispiel:** In einem Zeitungs-Artikel wird zuoberst ein grosses Bild angezeigt (nicht-dekorativ, siehe [✅ Dekorative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/dekorative-grafiken)), danach folgen `<h1>Die Fussball-WM kommt!</h1>`, dann Paragrafen etc.; im DOM ist die Überschrift zuoberst (Bild wird via CSS visuell an den Anfang gesetzt).
        - **😡 Beispiel:** Es wird kein CSS eingesetzt, sondern das Bild befindet sich im DOM oberhalb der Überschrift
    - **🙂 Beispiel:** In einer Auflistung von Cards ([✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}) wird oberhalb der Überschrift ein Publikations-Datum angezeigt; das Datum befindet sich innerhalb der Überschrift.
        - **🙂 Beispiel:** Das Datum befindet sich im DOM unterhalb der Überschrift (und wird via CSS darüber gesetzt)
        - **😡 Beispiel:** Das Datum befindet sich ausserhalb und oberhalb der Überschrift

⚠️ Dies kann auch über den [🏷️ DOM Inspektor](/de/tags/dom-inspektor) geprüft werden:

- `Rechtsklick` auf Überschrift → `Untersuchen`
- In der DOM-Baumansicht die Reihenfolge der Elemente prüfen
    - Kann je nach Komplexität des Codes schwierig sein

## Screenshots typischer Fälle



## Videos

- [🎬 Vorbildliche Überschriften (inkl. versteckte) - MySwitzerland](/videos/vorbildliche-ueberschriften-inkl-versteckte-myswitzerland)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - WOZ](/videos/vorbildliche-ueberschriften-inkl-versteckte-woz)