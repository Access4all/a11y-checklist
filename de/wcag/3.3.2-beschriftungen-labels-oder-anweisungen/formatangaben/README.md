---
id: "96"
wcag_criterion_id: "55"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 14:09:35"
---

# ✅ Formatangaben

WCAG-Kriterium: [📜 3.3.2 Beschriftungen (Labels) oder Anweisungen - A](..)

## Beschreibung

Formatangaben bei Formularfeldern sind zugänglich und mit den zugehörigen Eingabefeldern eindeutig verknüpft, d.h. zusätzlich angegebene Hinweise zu Eingabeformaten sind auch durch assistierende Technologien korrekt erfassbar.

## Prüfmethode (in Kürze)

**Screenreader:** Durch Pflichtfelder navigieren mittels Tab-Taste und prüfen, ob Formatangaben und zusätzliche Hinweise ausgegeben werden.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite mit Formular-Elementen öffnen
1. Sicherstellen, dass Formatangaben korrekt mit Formular-Elementen verbunden sind
    - ⚠️ Die WCAG machen keine Aussage darüber, ob Formatangaben von Anfang an sichtbar sind oder erst nach Abschicken des Formulars als Fehlermeldungen eingeblendet werden; es sollte sich aber für Sehende wie auch Blinde gleich verhalten.
    - **🙂 Beispiel:** Unter einem Datums-Feld befindet sich ein `<p>` mit Angaben zum Format (z.B. "Format: DD.MM.YYYY"). Der Paragraf ist via `aria-describedby` mit dem Text-Feld verbunden.
        - **😡 Beispiel:** Der Paragraf ist **nicht** verbunden.
    - **🙂 Beispiel:** Bei einem Datums-Feld befindet sich zuerst keine Angabe zum Format; erst nach Abschicken eines fehlerhaften Datums wird eine entsprechende Meldung angezeigt (z.B. "Das Datum muss das Format DD.MM.YYYY aufweisen")
        - ⚠️ Wenn stattdessen eine wenig aufschlussreiche Meldung angesagt wird (z.B. "Das Datumsformat ist nicht korrekt"), dann ist dies eher ein Fall für [✅ Informative Fehlermeldungen](/de/wcag/3.3.3-vorschlag-bei-fehler/informative-fehlermeldungen)
    - **🙂 Beispiel:** Unter einem Passwort-Feld befindet sich eine Liste (`<ul>`) mit Anforderungen (z.B. dass es mind. 8 Buchstaben haben muss, mind. 1 Sonderzeichen, etc.). Die Liste ist via `aria-describedby` mit dem Passwort-Feld verbunden.
        - **😡 Beispiel:** Die Liste ist **nicht** verbunden.

### Nachprüfen mit Screenreader

Bei komplexen Formularen oder zweifelhaftem Code (z.B. Einsatz von `aria-label`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- `Tab` (oder auch `F` oder `I`) drücken, um von Eingabefeld zu Eingabefeld zu springen
- Dann sicherstellen, dass der Screenreader alle relevante Information für's Feld vorliest

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

### Nur Plain-Text via aria-describedby

Elemente, die via `aria-describedby` ([🏷️ aria-describedby](/de/tags/aria-describedby)) mit einem Element verknüpft sind, werden nur als Plain-Text ausgegeben. Information über enthaltene Semantik wird ausgegeben (z.B. ein Link "AGBs lesen" in einem Paragraf wird nur als "AGBs lesen" angesagt, nicht als "Link AGBs lesen"). Insofern müssen solche beschreibenden Texte so geschrieben werden, dass sie auch ohne semantische Info verständlich bleiben.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar; zum Prüfen einfach zum Eingabefeld wischen: wenn es direkt zusammen mit dem Eingabeformat angesagt wird, ist es gut gelöst (wenn man für das Eingabeformat nochmal wischen muss, dann nicht).

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Prüfen, dass Formatangaben ausgegeben werden.

## Details zum blinden Testen

Formatangaben für Formular-Elemente sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Datumsformat wird als Placeholder angegeben](images/datumsformat-wird-als-placeholder-angegeben.png)

![Datumsformat wird als Fehlermeldung angegeben](images/datumsformat-wird-als-fehlermeldung-angegeben.png)
