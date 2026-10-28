---
id: "71"
wcag_criterion_id: "33"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 13:50:20"
---

# ✅ Sprunglinks

WCAG-Kriterium: [📜 2.4.1 Blöcke überspringen - A](..)

## Beschreibung

Sprunglinks ermöglichen das einfache Überspringen von sich wiederholenden Informationsblöcken (z.B. Navigation, Headerbereich) mit der Tastatur.

## Prüfmethode (in Kürze)

**Tastatur:** Nach Seiten-Laden direkt die Tab-Taste drücken und darauf achten, ob angewähltes Element ein Sprunglink ist, und ob er wie erwartet funktioniert.

## Prüfmethode für Web (ausführlich)

### Test-Schritte

1. Seite öffnen
1. `Tab`-Taste 1x betätigen
1. Sicher stellen, dass dadurch ein Sprunglink angezeigt wird, dessen Aktivierung zum Inhalt führt
    - **🙂 Beispiel:** Es wird links oben ein Sprunglink "Zum Inhalt springen" (o.ä.) angezeigt, dessen Betätigung zum Inhalt führt. → Dies bedeutet, dass der Fokus sich nun z.B. auf dem Inhalts-Container befindet (oder auf dem ersten Element des Inhalts, z.B. eine Überschrift). Weiteres Betätigen von `Tab` bewegt den Fokus durch die Inhalte.
        - **😡 Beispiel:** Der Fokus wird nicht (oder nicht korrekt) gesetzt. ⚠️ Manchmal z.B. wird nur der Viewport zum Inhalt gescrollt, aber der Fokus verharrt am Anfang der Seite, so dass beim weiteren Betätigen von `Tab` der Fokus trotzdem am Anfang der Seite startet.
    - **🙄 Beispiel:** Eine sehr einfache Webseite bietet keinen Sprunglink an. → Wenn z.B. der Kopfbereich kaum fokussierbare Elemente aufweist, schafft ein Sprunglink kaum Mehrwert.

⚠️ Es kann auch weitere Sprunglinks auf einer Seite haben, z.B. zur Suche, zum Fussbereich, etc. Dies kann je nach Webseite sinnvoll sein, aber man sollte es nicht übertreiben!

## Prüfmethode für Mobile (Ergänzungen zu Web)

Kann in hybriden Mobile Apps vorkommen, sowie auch auf Mobile Webseiten.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen
1. Prüfen, dass Headings vorhanden sind, um Inhalte überspringen zu können.

## Details zum blinden Testen

Auch wenn Sprunglinks nicht für Screenreader (sondern explizit für Tastatur-Nutzende) gedacht sind, kann das Vorhandensein und Funktionieren derselben auch mit Screenreader getestet werden.

(Screenreader benötigen keine Sprunglinks, weil sie z.B. Überschriften anspringen und deshalb problemlos auch grosse Inhaltsblöcke überspringen können.)

## Screenshots typischer Fälle

![Sprunglink auf GitHub](images/sprunglink-auf-github.png)

![Sprunglink auf WebAIM](images/sprunglink-auf-webaim.png)

![Sprunglink im A4AA](images/sprunglink-im-a4aa.png)
