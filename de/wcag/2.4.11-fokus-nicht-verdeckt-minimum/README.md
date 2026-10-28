---
id: "108"
parent_id: "71"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-not-obscured-minimum.html"
created_at: "2023-10-23 10:49:15"
---

# 📜 2.4.11 Fokus nicht verdeckt (Minimum) - AA

## Verstehen (in Kürze)

Der **Tastatur-Fokus** soll möglichst **nicht verdeckt** werden von anderen Elementen. Dies ermöglicht das mühelose Navigieren mit der Tastatur.

## Verstehen (ausführlich)

Wenn das aktuell fokussierte Element von anderen Elementen verdeckt wird, erschwert dies die Navigation per Tastatur erheblich (siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)). Dies kann etwa passieren, wenn der Fussbereich beim Scrollen fixiert ist ("Sticky Footer") und sich das fokussierte Element ganz unten im Viewport befindet.

Ein teilweises Verdecken des Fokus ist tolerierbar, wenn auch zu vermeiden; ein komplettes Verdecken ist inakzeptabel.

**Hinweis:** Schlechte Fokus-Führung kann solche Probleme ebenfalls verursachen, siehe auch [📜-2.4.3 Fokus-Reihenfolge](/de/wcag/2.4.3-fokus-reihenfolge).

### Ausnahmen

- Vernachlässigbar sind Situationen, in denen ein Element den umgebenden Inhalt temporär überlappt: etwa wenn der Fokus hinter einem zuvor geöffneten Datumswähler ([✅ Datepicker / Timepicker](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets/datepicker-timepicker)) verschwindet. Wichtig ist, dass das überlappende Element bei Bedarf geschlossen werden kann (z.B. mittels `Esc`-Taste).
- Die Position mancher Elemente kann durch Nutzende verändert werden, etwa gewisse Dialoge ([✅ Dialoge](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets/dialoge)); bei solchen Elementen muss nur die initiale Position den Ansprüchen genügen, also direkt nach Auftauchen des Dialogs.

### Verantwortlichkeiten

- Das Entwicklungsteam positioniert interaktive Elemente und scrollt den Viewport so, dass der Fokus stets möglichst gut sichtbar ist.

## ✅ Checkpoints

- [✅ Tastatur-Fokus nicht verdeckt](tastatur-fokus-nicht-verdeckt)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#focus-not-obscured-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#focus-not-obscured-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C43>

### Weiteres

- <https://www.w3.org/TR/css-scroll-snap/#propdef-scroll-padding>
- Intopia 2.4.11: <https://youtu.be/0ZoyE1u0eZM>
- <https://www.digitala11y.com/understanding-sc-2-4-11-focus-not-obscured-minimum/>
- <https://www.tpgi.com/how-to-test-2-4-11-focus-not-obscured-minimum/>
- <https://www.hellbusch.de/fokus-nicht-verdeckt/>
