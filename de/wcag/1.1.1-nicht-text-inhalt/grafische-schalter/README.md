---
id: "8"
wcag_criterion_id: "1"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-13 16:19:25"
video_ids: "[9, 8]"
---

# ✅ Grafische Schalter

WCAG-Kriterium: [📜 1.1.1 Nicht-Text-Inhalt - A](..)

## Beschreibung

Grafische Schalter sind korrekt beschriftet.

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Images > Display Alt Attributes: Angezeigte Alternativtexte mit Bildern abgleichen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) die Schalter vorlesen lassen (oder in [🏷️ Web Developer Extension](/de/tags/web-developer-extension) unter "Images" → "Display Alt Attributes" wählen)
    - ⚠️ Eine Übersicht von Schaltern kann mittels `Insert`+`F7` und dann `Alt`+`S` angezeigt werden
1. Sicherstellen, dass grafische Schalter einen passenden Alternativtext aufweisen
    - **🙂 Beispiel:** Ein Schalter mit einem Warenkorb-Symbol hat die Beschriftung "Warenkorb", "Zum Warenkorb", "Warenkorb anzeigen", o.ä.
        - ⚠️ Es ist nicht relevant, welche Technik für die Beschriftung verwendet wird: es muss also nicht unbedingt ein `alt`-Attribut o.ä. sein, sondern es kann auch visuell versteckter Text, `aria-label` o.ä. eingesetzt werden.
        - **🙄 Beispiel:** Die Beschriftung ist "Einkaufswagen" → beschreibt das Symbol und nicht unbedingt den Zweck
        - **😡 Beispiel:** Es hat gar keine Beschriftung
    - **🙂 Beispiel:** Ein Formular hat einen Pfeil-nach-rechts-Schalter zum Abschicken, die Beschriftung ist "Abschicken", "Absenden", "Formular schicken", o.ä.
        - **🙄 Beispiel:** Die Beschriftung ist "Pfeil nach rechts" → beschreibt das Symbol und nicht unbedingt den Zweck
        - **🙄 Beispiel:** Die Beschriftung ist "Los!" → auch nicht sehr aussagekräftig
        - **😡 Beispiel:** Es hat gar keine Beschriftung

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Prüfen, dass grafische Schalter über einen aussagekräftigen Alternativtext (Tooltip) verfügen.

## Details zum blinden Testen

Die zugängliche Beschriftung von Schaltern ist für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Korrekt beschrifteter Schalter für Hamburger-Menü](images/korrekt-beschrifteter-schalter-fr-hamburger-men.png)

![Schalter-Elementliste in NVDA](images/schalter-elementliste-in-nvda.png)

![Schalter ohne erkennbare Beschriftung](images/schalter-ohne-erkennbare-beschriftung.png)

## Videos

- [🎬 Hamburger-Menü schlecht umgesetzt (kein Schalter / aria-expanded, schlechte Benennung) - Atupri](/de/videos/hamburger-menue-schlecht-umgesetzt-kein-schalter-aria-expanded-schlechte-benennung-atupri)
- [🎬 Schalter ohne Namen - EWB](/de/videos/schalter-ohne-namen-ewb)
