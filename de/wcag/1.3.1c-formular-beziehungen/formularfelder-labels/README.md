---
id: "37"
wcag_criterion_id: "80"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-14 13:13:34"
video_ids: "[]"
---

# ✅ Formularfelder Labels

WCAG-Kriterium: [📜 1.3.1c Formular-Beziehungen](..)

## Beschreibung

Formularfelder weisen korrekt verknüpfte Labels auf.

## Prüfmethode (in Kürze)

**Maus:** Auf Label klicken und prüfen, ob der Tastatur-Fokus das Eingabefeld anspringt/anwählt.

**Screenreader:** Durch Eingabefelder navigieren mittels Tab-Taste und prüfen, ob `<label>`-Elemente dabei auch ausgegeben werden.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite mit Formular-Elementen öffnen
1. Bei jedem Eingabefeld auf das Label klicken (falls sichtbar)
1. Sicherstellen, dass Eingabefelder und Labels korrekt verbunden sind
    - ⚠️ Laut WCAG kann zum Benennen eines Eingabefelds auch ein `aria-label` direkt darauf gesetzt werden; zudem ist ein Label manchmal visuell versteckt. In beiden Fällen ist Klicken nicht möglich zum Testen, sondern der Screenreader muss eingesetzt werden (siehe unten).
    - **🙂 Beispiel:** Beim Klick auf "Vorname" springt der Fokus ins entsprechende Textfeld
        - **😡 Beispiel:** Der Fokus springt nicht hinein
    - **🙂 Beispiel:** Beim Klick auf "Ich habe die AGBs gelesen" wird die entsprechende Checkbox aktiviert
        - **😡 Beispiel:** Die Checkbox wird nicht aktiviert

### Nachprüfen mit Screenreader

Bei visuell ungewöhnlichen Formularen (z.B. teilweise keine visuell sichtbaren Labels) oder zweifelhaftem Code (z.B. Einsatz von `aria-label`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- `Tab` (oder auch `F` oder `I`) drücken, um von Eingabefeld zu Eingabefeld zu springen
- Dann sicherstellen, dass der Screenreader das Label des Felds vorliest

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar; zum Prüfen einfach zum Eingabefeld wischen: wenn es direkt zusammen mit dem Label angesagt wird, ist es gut gelöst (wenn man für die Beschreibung nochmal wischen muss, dann nicht).

## Prüfmethode für PDF (Ergänzungen zu Web)

Es ist in PDFs nicht möglich, visuelle Beschriftungen mit Formularfeldern zu verknüpfen. Damit Screenreader-Nutzende trotzdem wissen, welche Eingaben erwartet werden, müssen Formularfelder mit einem Tooltip versehen werden. Der Screenreader gibt diesen Text aus.

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit Maus über das Formularfeld fahren und Sichtprüfung, ob Tooltip vorhanden ist und/oder
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen.

## Details zum blinden Testen

Labels für Formular-Elementen sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Labels in A4AA](images/labels-in-a4aa.png)

## Videos

Keine Videos verfügbar.
