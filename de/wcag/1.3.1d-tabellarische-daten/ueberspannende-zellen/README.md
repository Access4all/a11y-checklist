---
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-06-10 11:25:18"
video_ids: "[]"
---

# ✅ Überspannende Zellen

WCAG-Kriterium: [📜 1.3.1d Tabellarische Daten](..)

## Beschreibung

Tabellen, deren Zellen mehrere Spalten und/oder Zeilen überspannen, sind für Screenreader weiterhin gut verständlich.

## Prüfmethode (in Kürze)

**Screenreader:** Durch Tabelle navigieren und prüfen, ob Spalten- und Zeilen-Titel korrekt ausgegeben werden.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) ausführen
1. Mit `T` zu Tabelle springen
1. Mit `Ctrl`+`Alt`+`Pfeile` durch die Zellen navigieren (quasi wie in Excel) und sicherstellen, dass jeweils die korrekten Zeilen-Header angesagt werden
    - **🙂 Beispiel:** Bei einer Länder-Tabelle überspannt die Header-Zeile `<th colspan="2">Kontinent</th>` die beiden darunter liegenden Header-Zeilen `<th>Europa</th>` und `<th>Afrika</th>`. Beim Erreichen der Zeile "Schweiz" wird sowohl "Kontinent" wie auch "Europa" angesagt (ausser man bewegte sich davor schon in diesen beiden Spalten); beim Erreichen der Zeile "Kenia" wird sowohl "Kontinent" wie auch "Afrika" angesagt (ausser man bewegte sich davor schon in diesen beiden Spalten).
        - ⚠️ Screenreader geben Zeilen- und Spalten-Header nur aus, wenn man sich in eine solche hinein bewegt! Wenn man in derselben bleibt (z.B. in "Europa"), dann wird sie nicht erneut ausgegeben (z.B. wenn man sich von der Zeile "Deutschland" in die Zeile "Schweiz" bewegt). Bei horizontalem Bewegen werden also nur Spalten-Header angesagt; bei vertikalem Bewegen nur Zeilen-Header. Dies vermeidet redundante Screenreader-Ausgaben.
    - **😡 Beispiel:** Eine Tabelle verwendet derart viele überspannende Zellen, dass der Screenreader beim Navigieren die korrekten Header nicht mehr ausgibt.
        - ⚠️ Obwohl HTML dies seit Jahrzehnten erlaubt, sind Screenreader nach wie vor schnell überfordert mit solchen Tabellen. Ob das Problem eher bei den Browsern oder den Screenreader liegt, ist unklar.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar. Da man Tabellen aber nicht vertikal navigieren kann, muss man sich per Wischen entweder durch die gesamte Tabelle durcharbeiten; oder man streicht mit dem Finger über die Tabelle (also auch hoch und runter über Zeilen hinweg) und schaut, ob die Angaben des Screenreaders immer vollständig sind und Sinn machen.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, ob Spalten- und/oder Zeilentitel, die über mehrere Spalten oder Zeilen gehen, korrekt vorgelesen werden und die dazugehörigen Datenzellen korrekt zugeordnet sind.

## Details zum blinden Testen

Korrekte Umsetzung von Tabellen ist für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Komplese Tabelle mit colspan und rowspan](images/komplese-tabelle-mit-colspan-und-rowspan.png)

## Videos

Keine Videos verfügbar.
