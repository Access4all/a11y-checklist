---
id: "29"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
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

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar; zum Prüfen mittels Überschriften-Navigation (im [🏷️ Rotor](/de/tags/rotor) aktivieren) zu Überschriften springen und dann mit Wisch-Bewegung zum nächsten Element navigieren.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, ob sich Überschriften vor den ihnen zugehörenden Inhalten befinden.

## Details zum blinden Testen

Überschriften sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
