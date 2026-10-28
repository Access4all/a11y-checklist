---
id: "99"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pointer-gestures.html"
created_at: "2019-11-10 20:24:09"
---

# 📜 2.5.1 Zeigergesten - A

## Verstehen (in Kürze)

Für Inhalte, die über **pfadbasierte oder Mehrpunkt-Zeigergesten** bedient werden, müssen **alternative Eingabemöglichkeiten** existieren **mittels einfacher Zeigereingabe**. Dies ermöglicht es Menschen, die in ihrer Bewegungsfreiheit eingeschränkt sind, jene Inhalte ebenfalls zu bedienen.

## Verstehen (ausführlich)

Eine **Pfad-Zeigergeste** zeichnet sich dadurch aus, dass sie einen **bestimmten Start-Punkt sowie eine Richtung** aufweist (z.B. von links nach rechts), zudem machmal eine Richtungs-Änderung (z.B. von links nach rechts, dann nach oben). Der exakte End-Punkt der Bewegung hingegen ist nicht relevant: z.B. eine Wischgeste kann über die ganze Bildschirmbreite erfolgen, aber auch sehr begrenzt sein (deshalb gilt Ziehen-und-Bewegen nicht als pfadbasiert, vergleiche mit [📜-2.5.7 Ziehende Bewegungen](/de/wcag/2.5.7-ziehende-bewegungen)).

Pfad-Zeigergesten sind anspruchsvoll, weshalb gewisse User-Gruppen diese nicht (oder nur ungenau) ausführen können, z.B. Menschen mit Parkinson oder Tetraplegie. Dasselbe gilt für **Mehrpunkt-Zeigergesten**, wie etwa die Spreizgeste zum Vergrössern eines Kartenausschnitts.

Es ist deshalb wichtig, dass Funktionen, die auf Pfad- und/oder Mehrpunkt-Zeigergesten setzen, auch über eine alternative, **einfache** Zeigereingabe bedient werden können (etwa Klicken, Doppelklicken, oder Klicken-und-Halten). Alternativen können z.B. sein:

- Ein Menü kann per Streichgeste (vom linken Rand her) eingeblendet werden; zudem existiert ein "Menü anzeigen"-Schalter.
- Ein Kartenausschnitt kann mit Spreizgeste gezoomt werden; zudem existieren die Schalter "Karte vergrössern" (bzw. "Karte verkleinern")
    - Oder: der Benutzer kann doppelklicken-und-halten, und dann den Mauszeiger nach oben oder unten bewegen.
- Die aktuell angezeigte Folie eines News- oder Foto-Karussells kann mittels Wischgeste verändert werden; zudem existieren die Schaltflächen "Vorherige" (bzw. "Nächste").
- In einem Projektmanagement-Werkzeug mit diversen Spalten können die Arbeitspakete mittels Wischgeste in die nächste bzw. vorhergehende Spalte verschoben werden; zudem kann auch ein Element markiert und mit den Schaltflächen "Nach links" (bzw. "Nach rechts") verschoben werden.

**Ausnahmen:** Ausgenommen von diesem Kriterium sind Fälle, in denen die Mehrpunkt- oder pfadbasierte Zeigergeste essenziell wichtig ist - etwa bei einem Zeichenprogramm.

**Hinweis:** Dieses Erfolgskriterium kann auch erfüllt werden, indem für eine solche komplexe Funktion zusätzlich ein alternatives Bedien-Element besteht, welches denselben Zweck erfüllt. Wichtig: dieses muss mit einfachen Zeigereingaben bedienbar sein (eine reine Tastatur-Alternative ist also **nicht** zulässig, siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)).

### Verantwortlichkeiten

- Das Designteam definiert für Mehrpunkt- oder pfadbasierte Zeigergesten auch alternative, mit einfachen Zeigereingaben nutzbare Bedien-Möglichkeiten.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um. Werden JavaScript-Widget-Bibliotheken verwendet, so werden diese erst eingehend auf Zugänglichkeit hin untersucht.
- Auftraggebende sollten sich bewusst sein, dass die Implementierung alternativer Eingabe-Möglichkeiten einen gewissen Zusatzaufwand bedeutet.

## ✅ Checkpoints

- [✅ Alternative für Pfad- und Mehrfach-Punkt-Zeigergesten](alternative-fuer-pfad-und-mehrfach-punkt-zeigergesten)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pointer-gestures>
- <https://www.w3.org/WAI/WCAG22/quickref/#pointer-gestures>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G215>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G216>

### Weiteres
- <https://www.wcag.com/developers/2-5-1-pointer-gestures/>
- <https://www.wuhcag.com/pointer-gestures/>
- <https://www.digitala11y.com/understanding-sc-2-5-1-pointer-gestures/>
- <https://www.boia.org/wcag2/cp/2.5.1>
