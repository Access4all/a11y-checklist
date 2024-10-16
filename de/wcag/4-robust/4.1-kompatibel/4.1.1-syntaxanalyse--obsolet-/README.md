---
id: "60"
parent_id: "77"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/parsing.html"
created_at: "2015-08-04 14:36:01"
---

# 4.1.1 Syntaxanalyse (obsolet) - A

## Verstehen (in Kürze)

Der **HTML-Code** eines Webauftritts darf **keine für die Barrierefreiheit relevanten Fehler** aufweisen. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die Seite zuverlässig zu interpretieren.

## Verstehen (ausführlich)

_**Obsolet:** Seit September 2023 ist dieses Erfolgskriterium gemäss Beschluss des W3C immer als erfüllt zu betrachten (bei Systemen, welche in HTML und XML umgesetzt sind). Mehr Infos hier: [How and why is success criteria 4.1.1 Parsing obsolete?](https://www.w3.org/WAI/standards-guidelines/wcag/faq/#parsing411)_

Die Code-Wohlgeformtheit und die Code-Validität gemäss gesetztem Doctype sind Voraussetzungen für qualitativ steuerbare und überprüfbare Webinhalte. Insbesondere durch Screenreader und andere assistierende Technologien offenbaren sich hier Probleme noch deutlicher als durch visuelle Browser.

Gleichzeitig ist es erfahrungsgemäss so, dass die wenigsten Code-Fehler direkte Auswirkungen auf die Accessibility einer Website zeigen, welche nicht bereits durch andere WCAG-Richtlinien abgedeckt sind. Die folgenden Punkte müssen jedoch berücksichtigt werden, da sie meist dennoch direkt relevant für die Accessibility sind:

- Unvollständiges Starten und Schliessen von Tags
- Ungültige Verschachtelung von Tags
- Doppelte Attribute
- Doppelte IDs
- Ungültiger Einsatz von ARIA

**Tipp:** Die obigen Punkte können mit entsprechenden Tools automatisiert überprüft werden.

### Verantwortlichkeiten

- Das Entwicklungsteam erstellt wohlgeformten und validen HTML-Code gemäss gesetztem Doctype.