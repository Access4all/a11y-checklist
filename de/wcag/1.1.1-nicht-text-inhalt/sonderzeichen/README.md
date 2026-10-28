---
id: "11"
wcag_criterion_id: "1"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-13 16:23:34"
---

# ✅ Sonderzeichen

WCAG-Kriterium: [📜 1.1.1 Nicht-Text-Inhalt - A](..)

## Beschreibung

Sonderzeichen (etwa "-10%", "CHF 20.35.-" oder "23.11.2023") vermitteln Informationen auf zugängliche Weise.

## Prüfmethode (in Kürze)

**Screenreader:** Inhalte mit Sonderzeichen vorlesen lassen und sicher stellen, dass die Ausgabe verständlich ist.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) die Inhalte lesen
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

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

Hinweis: [🏷️ VoiceOver/iOS](/de/tags/voiceoverios) unterbricht standardmässig bei jedem einzelnen HTML-Tag (z.B. `<span>`) die Ausgabe, so dass man teilweise viele Male swipen muss, um sich einen ansich kurzen Textinhalt (z.B. Kontostand) auszugeben, welcher aber visuell aufwändig (mit mehreren `<span>`s) umgesetzt wurde. In diesem Fall empfehlen wir unbedingt, den Textinhalt mit einem `aria-label` zu überschreiben, um mehr Kontrolle über die Ausgabe zu haben!

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Prüfen, dass Sonderzeichen oder spezielle Schreibweisen korrekt vorgelesen werden. Dies ist nur der Fall, wenn für Sonderzeichen ein "Tatsächlicher Text" hinterlegt worden ist.

## Details zum blinden Testen

Während der Sprach-Synthesizer symbolhafte Schriftzeichen verschlucken, Abkürzungen oder aus dem Alltag gebräuchliche Darstellungs-Formate (Währungen, Datum...) seltsam aussprechen kann, gibt die Braille-Zeile alle Zeichen exakt aus.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
