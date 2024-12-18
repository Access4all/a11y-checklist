---
id: "45"
wcag_criterion_id: "106"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 07:30:37"
---

# ✅ Schriftformatierungen

WCAG-Kriterium: [📜 1.3.1e Semantisch richtiges Markup](..)

## Beschreibung

Schriftformatierungen mit Informationsgehalt (z.B. durchgestrichen) sind auch nicht-visuell zugänglich.

## Prüfmethode (in Kürze)

**Screenreader:** Inhalte erkunden und prüfen, ob sie verständlich sind.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) Inhalte lesen (oder mit [🏷️ DOM Inspektor](/de/tags/dom-inspektor) direkt untersuchen)
1. Sicherstellen, dass Schriftformatierungen mit spezifischer Bedeutung vom Screenreader angesagt werden
    - **🙂 Beispiel:** In einem Produkt-Angebot ist der alte Preis mittels `<del>CHF 35.-</del>` durchgestrichen; dies alleine führt aber zu keiner besonderen Ausgabe in den meisten Screenreadern, deshalb wird ein `aria-label="Alter Preis: CHF 35.-"` gesetzt (oder visuell versteckter Text verwendet).
        - **😡 Beispiel:** Es wird kein `aria-label` (oder visuell versteckter Text) verwendet
    - **🙄 Beispiel:** Ein besonders betontes Wort in einem Satz ist mit `<em>` oder `<strong>` formatiert, z.B. `<p>Wir müssen <em>jetzt</em> handeln!</p>`; dies alleine führt zu keiner besonderen Ausgabe in den meisten Screenreadern → da diese Betonung aber nicht kritisch ist, ist ihr Fehlen kein Problem
        - ⚠️ Anders sieht es aus, wenn eine solche Betonung aber kritisch ist: z.B. wenn die Korrekturen eines Lehrers in einem Aufsatz mittels `<em>` markiert sind, so muss dies auch für Screenreader wahrnehmbar sein → visuell versteckter Text oder ein `aria-label` schafft auch hier Abhilfe.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen
1. Prüfen, dass Schriftformatierungen korrekt ausgegeben werden.

## Details zum blinden Testen

Teilweise: da gewisse Formatierungen nämlich nicht explizit vom Screenreader angesagt werden, weiss man deswegen oft gar nicht, dass da eine bedeutungstragende Formatierung existiert.

## Screenshots typischer Fälle

