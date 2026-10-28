---
id: "111"
parent_id: "98"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/dragging-movements.html"
created_at: "2023-10-23 11:00:29"
---

# 📜 2.5.7 Ziehende Bewegungen - AA

## Verstehen (in Kürze)

Für Inhalte, die über **Ziehbewegungen** (Drag & Drop) bedient werden, müssen **alternative Eingabemöglichkeiten** existieren **mittels einfacher Zeigereingabe**. Dies ermöglicht es Menschen, die in ihrer Bewegungsfreiheit eingeschränkt sind, jene Inhalte ebenfalls zu bedienen.

## Verstehen (ausführlich)

Eine **Ziehbewegung** (Drag & Drop) zeichnet sich dadurch aus, dass sie einen **bestimmten Start- und exakten End-Punkt** aufweist. Der Pfad dazwischen hingegen ist nicht relevant (vergleiche mit [📜-2.5.1 Zeigergesten](/de/wcag/2.5.1-zeigergesten)).

Ziehbewegungen sind anspruchsvoll, weshalb gewisse User-Gruppen diese nicht (oder nur ungenau) ausführen können, z.B. Menschen mit Parkinson oder Tetraplegie.

Es ist deshalb wichtig, dass Funktionen, die auf Ziehbewegungen setzen, auch über eine alternative, **einfache** Zeigereingabe bedient werden können (etwa Klicken, Doppelklicken, oder Klicken-und-Halten). Alternativen können z.B. sein:

- In einem Malprogramm kann durch Ziehbewegung eine Verbindungslinie zwischen zwei Elementen gezeichnet werden; alternativ kann das erste Element, dann eine Schaltfläche "Verbinden mit", und schlussendlich das zweite Element angeklickt werden.
- Eine Einkaufsliste kann durch Ziehbewegung sortiert werden; zudem hat jedes Element ein Aufklapp-Menü mit Optionen wie "Element an den Anfang verschieben", "Element an Position X verschieben", etc.
- In einem Projektmanagement-Werkzeug mit diversen Spalten können die Arbeitspakete mittels Ziehbewegung in eine beliebige Spalte verschoben werden; zudem für jedes Element ein Ausklapp-Menü geöffnet und Schaltflächen wie "In vorherige Spalte", "In Spalte X" oder "In letzte Spalte" ausgewählt werden.

**Hinweis:** Dieses Erfolgskriterium kann auch erfüllt werden, indem für eine solche komplexe Funktion zusätzlich ein alternatives Bedien-Element besteht, welches denselben Zweck erfüllt. Wichtig: dieses muss mit einfachen Zeigereingaben bedienbar sein (eine reine Tastatur-Alternative ist also **nicht** zulässig, siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)).

### Verantwortlichkeiten

- Das Designteam definiert für Ziehbewegungen auch alternative, mit einfachen Zeigereingaben nutzbare Bedien-Möglichkeiten.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um. Werden JavaScript-Widget-Bibliotheken verwendet, so werden diese erst eingehend auf Zugänglichkeit hin untersucht.
- Auftraggebende sollten sich bewusst sein, dass die Implementierung alternativer Eingabe-Möglichkeiten einen gewissen Zusatzaufwand bedeutet.

## Beispiele

- Eine Einkaufs-Liste kann per Ziehbewegung sortiert werden. Zusätzlich werden pro Listen-Element zwei Schalter "Eine Position nach oben / unten verschieben" angeboten. Oder es wird pro Listen-Element ein Ausklapp-Menü angeboten, welches die genannten Funktionalitäten enthält, sowie ggf. weitere (etwa "An den Anfang / das Ende der Liste verschieben").
- Per Schieberegler kann ein Zahlenwert ausgewählt werden, etwa um den Maximalpreis in einem Suchfilter festzulegen. Zusätzlich wird ein Eingabefeld angeboten, wo der Zahlenwert direkt eingegeben werden kann.
- Der sichtbare Ausschnitt auf einer Karte kann per Ziehbewegung verschoben werden. Zudem verfügt die Karte über Schaltflächen "Nach oben / unten / links / rechts", um die Ansicht zu verschieben.
- Eine beliebige Anzahl Objekte kann mittels viereckiger Markierung (Ziehbewegung) markiert werden. Alternativ kann einmal geklickt werden, um den Startpunkt der Markierung zu setzen, um dann mit einem zweiten Klick den Endpunkt zu setzen.

## ✅ Checkpoints

- [✅ Alternative zu Ziehbewegungen](alternative-zu-ziehbewegungen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#dragging-movements>
- <https://www.w3.org/WAI/WCAG22/quickref/#dragging-movements>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G219>

### Weiteres

- <https://www.tpgi.com/how-to-test-2-5-7-dragging-movements/>
- <https://www.tpgi.com/is-swiping-a-path-based-gesture/>
- <https://www.hellbusch.de/ziehende-bewegungen/>
- Intopia 2.5.7: <https://youtu.be/6dLUCAsr5fE>
- <https://www.wcag.com/developers/2-5-7-dragging-movements/>
- <https://www.digitala11y.com/understanding-sc-2-5-7-dragging-movements/>
- <https://dequeuniversity.com/resources/level-aa/2.5.7-dragging-movements>
- <https://www.hellbusch.de/ziehende-bewegungen/>
