---
id: "92"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html"
created_at: "2019-11-10 20:20:15"
---

# 📜 1.4.11 Nicht-Text Kontrast - AA

## Verstehen (in Kürze)

**Bedienelemente** (z.B. Textfelder, Radiobuttons, Checkboxen, Schalter, Tabs) und **informative grafische Elemente** (z.B. Linien eines Diagramms) müssen sich farblich durch **genügend Kontrast** vom Hintergrund abheben. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, dieselben wahrnehmen zu können.

## Verstehen (ausführlich)

Menschen mit Sehschwäche und Fehlsichtigkeit sind darauf angewiesen, dass sich Elemente gut sichtbar vom Hintergrund abheben. Deshalb müssen Bedienelemente und informative grafische Elemente einen ausreichend hohen Kontrastwert zum Hintergrund aufweisen.

Jeder visuelle Hinweis, der für die Wahrnehmung und Bedienung erforderlich ist, insbesondere auch um den Zustand eines Elements zu interpretieren, muss einen Kontrastwert von mindestens `3:1` aufweisen. Das gilt z.B. für Formularfeld-Begrenzungen, Ausklapp-Indikatoren bei Dropdowns, Häkchen in einer Checkbox, etc. Wenn zudem die Farbe eines Bedienelements ändert (etwa bei Fokus oder Aktivierung), dann muss auch diese Farbe die Kontrast-Mindestanforderung erfüllen. Der Hover-Zustand eines Elements muss nicht unterscheidbar sein vom Standard-Zustand.

Für Schalter wird empfohlen, den klickbaren Bereich ebenfalls ausreichend kontraststark zu umranden. Solange allerdings aufgrund von Position, Schriftart, etc. ein Schalter klar als solcher wahrnehmbar ist, ist eine kontraststarke Beschriftung ausreichend. Bei Textfeldern mit kontraststarkem Platzhaltertext bestehen keine Kontrastanforderungen an die Feldbegrenzungslinien.

Bei grafischen Elementen bedeuten ausreichende Kontraste, dass jeder visuelle Hinweis, der für die Wahrnehmung und die Interpretation erforderlich ist, einen Kontrastwert von mindestens `3:1` aufweisen muss. Gemeint sind damit z.B. Kurven und Linien eines Diagramms, darin enthaltene Symbole, Beschriftungen, etc.

**Hinweis:** Die Anforderungen an den Mindestkontrast gelten nur für sinntragende, informative grafische Elemente; rein dekorative Grafiken sind also nicht gemeint. Siehe diesbezüglich auch [📜-1.4.3 Kontrast (Minimum)](/de/wcag/1.4.3-kontrast-minimum).

**Ausnahme:** Ausgenommen sind inaktive Bedienelemente (`disabled`-Attribut). Insbesondere bei Schaltern empfehlen wir aber, den Einsatz von `disabled` zu unterlassen, da dies negative Seiteneffekte hat (z.B. ist der Schalter dann nicht mehr mit der Tastatur fokussierbar, siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)).

**Tipp:** Zerlegen Sie komplexe Grafiken in ihre kleinsten aussagekräftigen Teile. Prüfen Sie für jedes Teil dessen Kontrast zu den angrenzenden Farben.

### Verantwortlichkeiten

- Das Designteam definiert eine Palette von Vorder- und Hintergrundfarben, die in den benötigten Kombinationen genügend Kontrast aufweisen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Die Inhaltsverantwortlichen gestalten Inhalte so, dass diese genügend Kontrast aufweisen.
- Auftraggebende sollten sich bewusst sein, dass kontraststarke Designs (auch über die Mindestanforderungen hinaus) ein Vorteil für alle Sehenden sind.

## ✅ Checkpoints

- [✅ Kontrastverhältnis von Bedienelementen](kontrastverhaeltnis-von-bedienelementen)
- [✅ Kontrast bei informativen grafischen Elementen](kontrast-bei-informativen-grafischen-elementen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#non-text-contrast>
- <https://www.w3.org/WAI/WCAG22/quickref/#non-text-contrast>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G195>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G174>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G207>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G209>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-11-nicht-text-kontrast/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-11-kontraste-von-grafiken-und-grafischen-bedienelementen-ausreichend>

### Weiteres
- <https://www.wcag.com/designers/1-4-11-non-text-contrast/>
- <https://www.digitala11y.com/understanding-sc-1-4-11-non-text-contrast/>
- <https://www.boia.org/wcag2/cp/1.4.11>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1411_Non-Text_Contrast>
