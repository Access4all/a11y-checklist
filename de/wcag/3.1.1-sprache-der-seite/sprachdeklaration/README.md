---
id: "87"
wcag_criterion_id: "43"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 14:03:27"
---

# ✅ Sprachdeklaration

WCAG-Kriterium: [📜 3.1.1 Sprache der Seite - A](..)

## Beschreibung

Die Sprachdeklaration ist vorhanden und korrekt.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Seiten durchsehen und darauf achten, dass sie das korrekte `lang`-Attribut im `<html>`-Tag gesetzt haben.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit [🏷️ DOM Inspektor](/de/tags/dom-inspektor) das `<html>`-Tag der Seite inspizieren
1. Sicherstellen, dass ein korrektes `lang`-Attribut gesetzt ist:
    - **🙂 Beispiel:** Die Seite hat deutsche Inhalte; es ist `lang="de"`, `lang="de-CH"` o.ä. gesetzt
        - **😡 Beispiel:** Es ist ein falsches `lang`-Attribut gesetzt, z.B. `lang="en"` oder `lang="xx"`
        - **😡 Beispiel:** Es ist kein `lang`-Attribut gesetzt

⚠️ Dies gilt nur für die Aussprache der Inhalte: der Screenreader kann so den korrekten Synthesizer aktivieren. Informationen über die Elemente (semantische Information) wird aber weiterhin stets in der Sprache des Betriebssystems ausgegeben.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Auf Web-Views 1:1 übertragbar.

Wenn eine native App nicht in der Systemsprache verfügbar ist, so müssen deren Inhalte dennoch korrekt angesagt werden (sofern die entsprechende Sprache im System installiert ist).

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Dokumenteigenschaften öffnen und im Reiter "Erweitert" überprüfen, ob eine Sprache angegeben ist und ob die angegebene Sprache korrekt ist.

## Details zum blinden Testen

Ja: wenn der Screenreader die Inhalte in einem seltsamen Akzent ausspricht, ist wohl die Sprache falsch gesetzt worden.

## Screenshots typischer Fälle

![Englische Sprachdeklaration beim ADG](images/englische-sprachdeklaration-beim-adg.png)

![CH-Deutsch beim Blick](images/ch-deutsch-beim-blick.png)

![Fehlende Sprachdeklaration](images/fehlende-sprachdeklaration.png)
