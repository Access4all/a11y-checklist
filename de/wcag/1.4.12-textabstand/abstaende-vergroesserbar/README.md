---
id: "61"
wcag_criterion_id: "93"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-03-15 07:50:30"
video_ids: "[]"
---

# ✅ Abstände vergrösserbar

WCAG-Kriterium: [📜 1.4.12 Textabstand - AA](..)

## Beschreibung

Abstände zwischen Zeilen, Wörtern und Buchstaben sowie nach Absätzen sind ohne resultierende Einschränkungen um bestimmte Werte vergrösserbar. Ausnahmen sind: Untertitel in Video-Inhalten, PDF-Dokumente.

## Prüfmethode (in Kürze)

**Bookmarklet "Text-Spacing":** Ausführen und auf erwartungsgemässe Anpassung der Inhalte achten.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Text Spacing Bookmarklet](/de/tags/text-spacing-bookmarklet) ausführen
1. Sicherstellen, dass Inhalte weiterhin gut lesbar dargestellt werden
    - **🙂 Beispiel:** Die Inhalte werden weiterhin gut lesbar dargestellt
    - **😡 Beispiel:** Es kommt zu Überlappungen von Text (z.B. aufgrund langer Wörter) oder anderen Elementen
        - ⚠️ Lange Wörter treten insbesondere in der Deutschen Sprache auf. Sie können mittels CSS (`hyphens: auto;`) zwar automatisch getrennt werden, aber dies bewirkt nicht immer den gewünschten Effekt. Deshalb wird auch gerne auf JavaScript-Libraries zurück gegriffen, welche Worttrennung im Code "künstlich" forcieren, was aber wiederum unschöne Effekte z.B. auf Screenreader haben kann.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Auf Web-Views 1:1 übertragbar. Bei nativen Apps gibt es aktuell keine solche Einstellung.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht anwendbar (WCAG-Wortlaut: "Currently, this SC does not apply to PDF as it is not implemented using markup.")

## Details zum blinden Testen

Nein.

## Screenshots typischer Fälle

![Seite ohne Anwendung von zusätzlichem Text-Spacing etc.](images/seite-ohne-anwendung-von-zustzlichem-text-spacing-etc.png)

![Seite mit Anwendung von zusätzlichem Text-Spacing etc.](images/seite-mit-anwendung-von-zustzlichem-text-spacing-etc.png)

![Unschöne Überlappung von Bild und Schrift, was den Text praktisch unlesbar macht](images/unschne-berlappung-von-bild-und-schrift-was-den-text-praktisch-unlesbar-macht.png)

## Videos

Keine Videos verfügbar.
