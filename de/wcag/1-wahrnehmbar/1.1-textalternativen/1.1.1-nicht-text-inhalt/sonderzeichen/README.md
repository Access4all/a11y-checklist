---
id: "11"
wcag_criterion_id: "1"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-13 16:23:34"
---

# Prüfpunkt: Sonderzeichen

## Beschreibung

Sonderzeichen (etwa "-10%", "CHF 20.35.-" oder "23.11.2023") vermitteln Informationen auf zugängliche Weise.

## Prüfmethode (in Kürze)

**Screenreader:** Inhalte mit Sonderzeichen vorlesen lassen und sicher stellen, dass die Ausgabe verständlich ist.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit 🏷️-13 die Inhalte lesen
1. Sicherstellen, dass symbolhafte Schriftzeichen sinnvoll ausgegeben werden
    - **🙂 Beispiel:** Der Text "Der Zucker-Anteil hat sich um -10% verändert!" wird als "Der Zucker-Anteil hat sich um **minus** zehn Prozent verändert!" ausgesprochen
        - **😡 Beispiel:** Der Text wird als "Der Zucker-Anteil hat sich um zehn Prozent verändert!" ausgesprochen (das Minus-Zeichen wird "verschluckt")
    - **🙂 Beispiel:** Der Text "CHF 20.35.-" wird als "20 Schweizer Franken und 35 Rappen" ausgesprochen
        - **🙄 Beispiel:** Auch "CHF 20 Punkt 35" o.ä. ist in Ordnung (zusammen hängend, ohne Unterbrechung)
            - ⚠️ Screenreader-Nutzer sind sich gewohnt, dass Abkürzungen oft seltsam ausgegeben werden.
        - **😡 Beispiel:** Hingegen das Aufteilen in mehrere Ausgaben (z.B. "CHF 20", dann "Punkt 35" o.ä.) ist nicht in Ordnung
        - **😡 Beispiel:** Auch "CHF 20 35" ist nicht in Ordnung
    - **🙂 Beispiel:** Der Text "23.11.2023" wird als "23. November 2023" ausgesprochen
        - **🙄 Beispiel:** Auch "23 Punkt 11 Punkt 2023" ist in Ordnung (zusammen hängend, ohne Unterbrechung)
            - ⚠️ Screenreader-Nutzer sind sich gewohnt, dass Datums-Angaben oft seltsam ausgegeben werden.
        - **😡 Beispiel:** Hingegen das Aufteilen in mehrere Ausgaben (z.B. "23 Punkt", dann "11 Punkt", dann "2023" o.ä.) ist nicht in Ordnung
        - **😡 Beispiel:** Auch "23 11 2023" ist nicht in Ordnung

## Screenshots typischer Fälle

