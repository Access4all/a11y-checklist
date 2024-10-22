---
id: "27"
parent_id: "69"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pause-stop-hide.html"
created_at: "2015-08-04 14:36:00"
---

# 2.2.2 Pausieren, stoppen, ausblenden - A

## Verstehen (in Kürze)

Sich **bewegender, blinkender** oder sonstwie **verändernder Inhalt** (etwa Werbung) muss **gestoppt oder ausgeblendet** werden können. Dies ermöglicht es Menschen, die davon abgelenkt werden (etwa bei Aufmerksamkeitsdefiziten), Inhalte störungsfrei zu nutzen.

## Verstehen (ausführlich)

Dauerhaft animierte Elemente (etwa Werbebanner) erfordern zusätzliche Aufmerksamkeit. Dies kann verhindern, dass Menschen mit eingeschränkter kognitiver Leistung sich auf andere Inhalte konzentrieren können auf derselben Seite. Dadurch werden solche Seiten schnell gänzlich unbenutzbar. Entsprechende Elemente müssen deshalb pausiert, gestoppt oder ausgeblendet werden können. Dies gilt auch für Funktionen, die sich automatisch aktualisieren (etwa ein Newsticker).

**Ausnahmen:** Wenn die Bewegung eine Animation ist, die läuft, um anzuzeigen, dass etwas geladen wird (ein "Spinner"); oder wenn die Animation nicht länger als 5 Sekunden dauert.

**Hinweis:** Für Anforderungen in Bezug auf flackernden oder blitzenden Inhalt beachten Sie **📜-2.3.1 Blitzen, dreimalig oder unterhalb Grenzwert**.

### Verantwortlichkeiten

- Das Designteam definiert einfach wahrzunehmende und gut zu bedienende Möglichkeiten, Animationen zu pausieren, zu stoppen oder auszublenden.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Auftraggebende sollten sich bewusst sein, dass Animationen eine unnötige Ablenkung für alle darstellen können.

## Beispiele

- Ein Newsticker, welcher alle paar Sekunden seinen Inhalt neu lädt um die neusten Meldungen anzuzeigen, verfügt über einen Schalter zum Pausieren.
- Ein Werbebanner, welches konstant Text von horizontal über den Bildschirm laufen lässt, verfügt über einen Schalter zum Pausieren.
- Ein Karussell, welches automatisch alle paar Sekunden eine andere Folie anzeigt, verfügt über einen Schalter zum Pausieren (oder hört mit dem automatischen Wechsel auf, sobald z.B. auf "Nächste Folie" geklickt wird).
- Ein Link "Sonder-Angebot!" blinkt rhythmisch oder ändert regelmässig seine Farben.
- Eine automatisch abspielende Animation (z.B. ein Werbe-Video) kann pausiert werden (oder dauert nicht länger als 5 Sekunden).

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pause-stop-hide>
- <https://www.w3.org/WAI/WCAG22/quickref/#pause-stop-hide>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G4>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR33>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G11>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G152>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G186>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G191>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/2-2-2-bewegte-inhalte-abschaltbar/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-2-2-bewegte-inhalte-abschaltbar>

### Weiteres
- <https://www.wcag.com/designers/2-2-2-pause-stop-hide/>
- <https://www.wuhcag.com/pause-stop-hide/>
- <https://www.digitala11y.com/understanding-sc-2-2-2-pause-stop-hide/>
- <https://www.boia.org/wcag2/cp/2.2.2>