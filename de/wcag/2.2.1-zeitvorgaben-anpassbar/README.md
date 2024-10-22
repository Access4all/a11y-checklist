---
id: "26"
parent_id: "69"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/timing-adjustable.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.2.1 Zeitvorgaben anpassbar - A

## Verstehen (in Kürze)

Vorhandene **zeitliche Begrenzungen** (etwa Session-Logouts) müssen **verlängert oder deaktiviert** werden können. Dies schützt Menschen davor, beim Arbeiten unterbrochen zu werden, auch wenn sie länger brauchen für das Interagieren mit Eingabegeräten (etwa motorisch Eingeschränkte, welche die Tastatur nur mit einem einzelnen Finger bedienen können) oder mehr Zeit für das Verstehen von Software benötigen (etwa Menschen mit Leseschwierigkeiten).

## Verstehen (ausführlich)

Menschen mit Behinderungen benötigen für das Lesen und die Interaktion mit komplexen Webinhalten oft länger und laufen deshalb sehr viel häufiger Gefahr, während einer Sitzung eine zeitliche Begrenzung zu überschreiten (und dabei etwa automatisch ausgeloggt zu werden). Solche Begrenzungen müssen entsprechend anpassbar sein.

Folgende Möglichkeiten sind zulässig:

- Die zeitliche Begrenzung kann abgeschaltet werden, bevor sie relevant wird. Dabei ist ein deutlicher Hinweis auf diese Einstellung erforderlich.
- Die zeitliche Begrenzung kann auf mindestens den `10`-fachen Wert der Standardeinstellung erhöht werden.
- Es erfolgt eine Warnung, bevor das Zeitintervall abläuft, und es verbleiben dabei mindestens `20` Sekunden Zeit, um mit einer einfachen Aktion die verfügbare Zeit zu verlängern (z.B. Bestätigen eines entsprechend auftauchenden Dialogs). Diese Option muss mindestens `10`-mal bestehen.

**Ausnahmen:** Falls die zeitliche Begrenzung mehr als `20` Stunden beträgt, oder die Verlängerung die Handlung ungültig werden lässt (z.B. bei einer Online-Auktion), dann wird das Timeout als unentbehrlich verstanden.

**Hinweis:** Wenn die Website über eine Funktion verfügt, die sich automatisch aktualisiert (etwa ein Newsticker), so muss die Möglichkeit bestehen, die Häufigkeit der Aktualisierungen um mindestens das `10`-fache der Standardeinstellung zu verzögern. Dasselbe gilt zudem für Meldungen, die nur für kurze Zeit eingeblendet werden (z.B. das Bestätigen einer Nutzeraktion).

### Verantwortlichkeiten

- Das Designteam definiert einfach wahrzunehmende und gut zu bedienende Möglichkeiten, zeitliche Begrenzungen anzupassen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Auftraggebende sollten sich bewusst sein, dass zeitliche Begrenzungen sinnvoll anpassbar sein müssen.

## Beispiele

- In einem Onlineshop, während ein Bestellvorgang ausgefüllt wird, erscheint rechtzeitig vor Ablauf der Session ein gut wahrnehmbarer Hinweis, dass die Session durch Bestätigung des Hinweises verlängert werden kann.
- In einem e-Banking kann in den Profileinstellungen die Dauer einer Session auf den erforderlichen Wert erhöht werden.

## ✅ Checkpoints

- [✅ Timeout-Zeitintervalle](timeout-zeitintervalle)