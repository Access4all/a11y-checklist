---
id: "90"
wcag_criterion_id: "50"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 14:05:04"
video_ids: "[]"
---

# ✅ Kontextänderung bei Eingabe

WCAG-Kriterium: [📜 3.2.2 Bei Eingabe - A](..)

## Beschreibung

Der Kontext ändert sich nicht automatisch bei Eingabe (z.B. Weiterleitung auf eine andere Seite).

## Prüfmethode (in Kürze)

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass bei Eingabe keine Änderung des Kontexts geschieht.

## Prüfmethode für Web (ausführlich)

### Test-Schritte

1. Seite öffnen
1. Mit interaktiven Elementen interagieren und sicherstellen, dass keine Änderung des Kontexts passiert:
    - **🙂 Beispiel:** Beim Auswählen einer Option in einem Formular werden **darunter** weitere Formular-Elemente ein- oder ausgeblendet, aber das fokussierte Element ist davon nicht betroffen
        - **😡 Beispiel:** Das gesamte Formular wird neu geladen, inkl. dem fokussierten Element
            - ⚠️ Visuell macht das oft kaum einen Unterschied, aber das Neuladen bzw. Ersetzen des fokussierten Elements führt dazu, dass auch der Fokus "verloren" geht. Selbst wenn der Fokus nach Neuladen korrekt wieder auf das zuvor fokussierte Element gesetzt wird, bewirkt das Neu-Setzen die erneute Ansage des Elements im Screenreader, was verwirrend sein kann.
    - **🙄 Beispiel:** Eine Seite bietet ein "Sprache wechseln" Menü im Kopfbereich an: dieses ist als `<select>` umgesetzt und lädt bei der Wahl einer Sprache die Seite neu.
        - ⚠️ Dies hat sich als geläufiges Pattern etabliert und führt kaum zu Überraschungen; dennoch sollte eine solche Ausnahme mittels eines `aria-label="Sprache wählen, um Seite neu zu laden"` o.ä. angekündigt werden.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Wird oft vergessen, aber auch Mobile Apps müssen komplett mit Tastatur gesteuert werden können.

## Prüfmethode für PDF (Ergänzungen zu Web)

Bei PDF-Formularen ist es möglich, interaktive Elemente wie zum Beispiel Buttons und Verlinkungen hinzuzufügen.

### Prüfschritte:

1. Für jede PDF-Seite, die Daten übermittelt, visuell überprüfen, dass das Formular einen Submit-Button hat.
1. Mittels Tab zum Button navigieren und überprüfen, ob bei Aktivieren die Daten übermittelt werden.
1. PDF mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) öffnen und Eigenschaften des Buttons überprüfen.

## Details zum blinden Testen

Ja, solche Probleme können auch per Screenreader gefunden werden.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.

## Videos

Keine Videos verfügbar.
