---
id: "14"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/use-of-color.html"
created_at: "2015-08-04 14:36:00"
---

# 1.4.1 Benutzung von Farbe - A

## Verstehen (in Kürze)

**Informationen** müssen so vermittelt werden, dass sie **unabhängig von farblichem Sehvermögen** verstanden werden können. Dies ermöglicht es Menschen ohne Farbsicht, trotzdem alle Informationen verarbeiten zu können.

## Verstehen (ausführlich)

Werden visuelle Informationen nur über Farbe vermittelt, so werden Menschen mit Farbfehlsichtigkeit diese Unterschiede ggf. nicht wahrnehmen können (z.B. rot hervorgehobene Eingabefelder, um fehlerhafte Eingabe zu markieren; aber auch Links innerhalb von Fliesstext oder Kuchendiagramme, deren Einzelstücke nur durch Farbe identifizierbar sind).

Diesem Umstand kann abgeholfen werden, indem ein weiterer visueller Reiz angeboten wird, um die Information zu transportieren, etwa Fettschrift oder Unterstreichung. Weitere Möglichkeiten bieten der Einsatz von unterschiedlichen Symbolen oder zusätzlicher Text.

Wir empfehlen zudem, dass Zustandsänderungen (wie Hover und Fokus) nicht nur über Farbveränderungen erfolgen, sondern bspw. über zusätzliche Umrandung.

**Hinweis:** Dieses Erfolgskriterium spricht ausdrücklich die Farbwahrnehmung an. Andere Formen der Wahrnehmung werden in Richtlinie 📜-1.3 behandelt.

**Wichtig:** Wenn trotzdem farbliche Unterscheidung alleine verwendet werden soll (z.B. für Links in einem Text), so müssen die zu unterscheidenden Elemente ein Kontrastverhältnis von mindestens `3:1` zur Umgebung aufweisen (siehe 📜-1.4.3). Eine solche Unterscheidung allein mittels Kontrasten zu realisieren, ist allerdings schwierig, denn die verschiedenen Kontrastanforderungen (zwischen Link und Hintergrund, zwischen Fliesstext und Hintergrund sowie zwischen Link und Fliesstext) schränken die Möglichkeiten stark ein.

### Verantwortlichkeiten

- Das Designteam definiert Elemente so, dass diese auch ohne farbliches Sehvermögen verstanden werden können.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.
- Die Inhaltsverantwortlichen gestalten Inhalte so, dass diese auch ohne farbliches Sehvermögen verstanden werden können.

## Beispiele

- Ein aktiver Menüpunkt in einer Navigation wird nicht nur farblich, sondern auch durch Unterstreichung hervorgehoben.
- Kuchenstücke in einem Kuchendiagramm sind nicht nur durch ihre Hintergrundfarbe mit der dazu gehörenden Legende verknüpfbar, sondern durch ein weiteres visuelles Merkmal (z.B. durch individuelle Schraffierung).

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#use-of-color>
- <https://www.w3.org/WAI/WCAG22/quickref/#use-of-color>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G14>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G205>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G182>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G183>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G111>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G14>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-1-nutzung-von-farbe/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-1-ohne-farben-nutzbar>

### Weiteres
- <https://www.wcag.com/designers/1-4-1-use-of-color/>
- <https://www.wuhcag.com/use-of-colour/>
- <https://www.digitala11y.com/understanding-sc-1-4-1-use-of-color/>