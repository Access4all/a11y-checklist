---
id: "118"
wcag_criterion_id: "112"
applies_to_pdf: ""
applies_to_design: ""
applies_to_development: ""
applies_to_content: ""
applies_to_quality_assurance: ""
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-04-16 09:10:44"
---

# ✅ Zielgrösse und Abstand

WCAG-Kriterium: [📜 2.5.8 Zielgrösse (Minimum) - AA](..)

## Beschreibung

Aktivierbare Elemente weisen die geforderte Mindestgrösse oder genügend Abstand auf.

## Prüfmethode (in Kürze)

**Bookmarklet "Target-Size"**: Ausführen und mit Seite abgleichen: Gibt es Elemente, die zu klein sind und zu wenig Abstand haben?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Target Size Bookmarklet](/de/tags/target-size-bookmarklet) ausführen
    - ⚠️ Bei Grenzfällen kann via [🏷️ DOM Inspektor](/de/tags/dom-inspektor) die genaue Grösse eines Elements angezeigt werden: einfach über ein Element hovern in der Baum-Ansicht!
1. Sicherstellen, dass angezeigte Verstösse (blaue Kreise) **keine** Ausnahmen darstellen
    - **🙂 Beispiel:** Schalter und Links sind mind. `24x24px` gross
    - **🙄 Beispiel:** Ein Schalter ist `19x19px` gross, hat aber einen Abstand von mind. `5px` zu angrenzenden interaktiven Elementen
        - ⚠️ Ist laut WCAG explizit erlaubt; wir ermuntern unsere Kunden aber natürlich, interaktive Elemente generell besser etwas grösser zu designen!
    - **😡 Beispiel:** Ein Schalter ist `19x19px` gross; gleich daneben (ohne Abstand) befindet sich ein weiterer Schalter.
    - **🙂 Beispiel:** Links in einem Fliesstext (also in einem Paragrafen, aber auch in einer Liste o.ä.) sind `20px` hoch.
        - **⚠️ Erlaubte Ausnahme:** In Fliesstext gilt die Anforderung nicht!
    - **🙂 Beispiel:** Eine Karte der Schweiz zeigt alle Ortschaften als klickbare Bereiche an; einzelne Ortschaften sind so klein, dass ihr klickbarer Bereich kleiner ist als `24x24px`.
        - **⚠️ Erlaubte Ausnahme:** Die Grösse ist hier essenziell für die Funktion!

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht relevant.

## Details zum blinden Testen

Nein.

## Screenshots typischer Fälle

![Dropdown-Indikatoren auf ZFA-Webseite](images/dropdown-indikatoren-auf-zfa-webseite.png)

![Sehr kleine Navigations-Elemente auf Wikipedia, aber mit genug Abstand](images/sehr-kleine-navigations-elemente-auf-wikipedia-aber-mit-genug-abstand.png)

![Links in Fliesstext auf Wikipedia](images/links-in-fliesstext-auf-wikipedia.png)

![Links in einer Liste (Fliesstext)](images/links-in-einer-liste-fliesstext.png)

![DOM-Inspektor zeigt Elementgrösse bei Hover an](images/dom-inspektor-zeigt-elementgrsse-bei-hover-an.png)

![Eine problematisch dichte Ansammlung von Points of Interest auf einer Karte](images/eine-problematisch-dichte-ansammlung-von-points-of-interest-auf-einer-karte.png)

![Datepicker, dessen einzelne Tage zu kleine Klickflächen aufweisen](images/datepicker-dessen-einzelne-tage-zu-kleine-klickflchen-aufweisen.png)