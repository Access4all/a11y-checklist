---
id: "16"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 1.4.3 Kontrast (Minimum) - AA

## Verstehen (in Kürze)

**Texte und Symbole** müssen sich farblich **durch genügend Kontrast** vom Hintergrund abheben. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, Text erkennen und lesen zu können.

## Verstehen (ausführlich)

Menschen mit Sehschwäche und Fehlsichtigkeit sind darauf angewiesen, dass sich Elemente gut sichtbar vom Hintergrund abheben. Deshalb müssen Texte und informative Elemente (etwa Symbole) einen ausreichend hohen Kontrastwert zum Hintergrund aufweisen.

Relevant sind alle Texte des Inhalts und von Bedienelementen. Auch deren Zustandsänderungen (wie Hover und Fokus) müssen die Anforderungen erfüllen; für die Unterscheidbarkeit zwischen denselben gelten auf Stufe AA allerdings keine strikten Kontrastanforderungen.

Notwendiger Mindestkontrast:

- **Normale Schrift:** Kontrastverhältnis von mindestens `4.5:1`
- **Grosse Schrift** (ab `18pt` oder `14pt` + fett, entspricht 24px bzw. 18.5px fett): Kontrastverhältnis von mindestens `3:1`

Ausschlaggebend ist der im CSS hinterlegte Farbcode, nicht durch Anti-Aliasing o.ä. möglicherweise veränderte Pixelfarben.

Wenn ein Platzhalter (`placeholder`-Attribut) zusätzliche Information liefert, die sonst nicht vorhanden ist, dann muss er ausreichend kontraststark sein. Das gilt z.B. bei Formatangaben, bei genauerer Angabe, dass in ein Suchfeld eine PLZ, Stadt, Bestellnummer, etc. eingegeben und gesucht werden können. Wenn der Platzhalter rein redundant ist, dann gelten für ihn keine Kontrastanforderungen.

**Wichtig:** Der Farbton spielt bei der Berechnung des Kontrasts keine Rolle. Somit können z.B. ein sattes Grün und ein sattes Rot wider Erwarten zu wenig Kontrast aufweisen, denn Menschen, die keine Farben sehen, nehmen beide Farben in demselben satten Grau wahr. Ein sattes Grün und ein schwaches Rot hingegen werden als sattes Grau und schwaches Grau wahrgenommen, und der Kontrast ist entsprechend gewährleistet.

**Ausnahmen:** Für Logos oder inaktive Elemente (z.B. nicht auswählbare Schalter) gelten keine Kontrastanforderungen. Dasselbe gilt für dekorative bzw. redundante Elemente (z.B. ein Warenkorbsymbol in einem mit "Warenkorb" beschrifteten Link).

### Verantwortlichkeiten

- Das Designteam definiert im Rahmen des vorgegebenen Designs eine Palette von Vorder- und Hintergrundfarben, die in den benötigten Kombinationen genügend Kontrast aufweisen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Die Inhaltsverantwortlichen gestalten Inhalte so, dass diese genügend Kontrast aufweisen.
- Auftraggebende sollten sich bewusst sein, dass kontraststarke Designs (auch über die Mindestanforderungen hinaus) ein Vorteil für alle Sehenden sind (z.B. bei mobiler Nutzung).

## Beispiele

- Kontrastanalyse: Vordergrund weiss (HEX #FFFFFF), Hintergrund blau (HEX #0064B4). Resultate: Kontrastverhältnis ist `6.0:1` und erfüllt die Anforderungen an normalen Text auf Stufe AA sowie die Anforderungen an grossen Text auf Stufen AA und AAA.
- Mit dem "Colour Contrast Analyser" können die verwendeten Farben gemessen und abgestimmt werden. Pipettenfunktion, HEX-Code-Eingabe und Auswahl aus einer Farbpalette stehen zur Auswahl.

## ✅ Checkpoints

- [✅ Kontrastverhältnis bei Text](kontrastverhaeltnis-bei-text)
- [✅ Kontrast von interaktiven Textelementen](kontrast-von-interaktiven-textelementen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#contrast-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#contrast-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G148>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G174>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G145>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-3-kontraste-von-texten/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-3-kontraste-von-texten-ausreichend>

### Weiteres
- <https://www.wcag.com/designers/1-4-3-color-contrast/>
- <https://www.digitala11y.com/understanding-sc-1-4-3-contrast-minimum/>
- <https://www.boia.org/wcag2/cp/1.4.3>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/>