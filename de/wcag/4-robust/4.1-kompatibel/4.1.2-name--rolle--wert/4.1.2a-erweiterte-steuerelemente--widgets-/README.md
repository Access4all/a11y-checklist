---
id: "87"
parent_id: "61"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/name-role-value"
created_at: "2016-01-28 13:28:43"
---

# 4.1.2a Erweiterte Steuerelemente (Widgets)

## Verstehen (in Kürze)

**Erweiterte Steuerelemente** (JavaScript-Widgets) müssen so programmiert sein, dass ihr **Zweck**, ihre **Bedienung** und die entsprechenden **Zustände durch Software erkannt** werden können. Dies ermöglicht die uneingeschränkte Bedienung dieser Elemente durch assistierende Technologien (z.B. Screenreader).

## Verstehen (ausführlich)

### Standard-HTML vs. JavaScript-Widgets

Auch wenn Standard-HTML viele nützliche Steuerelemente anbietet, so fehlen doch einige etwas anspruchsvollere Steuerelemente (JavaScript-Widgets), welche in aktuellen interaktiven Websites oft benötigt werden: Beispiele sind etwa Tabs (✅-106), Akkordeons (✅-100), Dropdowns (✅-104), Tooltips (✅-107), etc.

**Wichtig:** Wir empfehlen, wenn möglich Standard-HTML-Elemente einzusetzen, und JavaScript-Widgets nur dann einzusetzen, wenn HTML keine entsprechende Funktionalität anbietet. Entsprechend ist ein `<button>` einem `<div role="button">` vorzuziehen; dasselbe gilt für ein `<select>` anstelle eines JavaScript-Dropdowns.

HTML-Standardelemente werden von allen Browsern "von Haus aus" barrierefrei angeboten. Die Zugänglichkeit von Widgets hingegen liegt in der Verantwortung der Programmierenden. Normalerweise sind Widgets nicht einfach barrierefrei, sondern Barrierefreiheit muss erst mit besonderen Vorkehrungen (und entsprechendem Aufwand) "hergestellt" werden.

### ARIA (Accessible Rich Internet Applications)

ARIA bietet diverse Rollen (z.B. `role="tablist"`), Attribute und Zustände (z.B. `aria-selected="true"`) an. Damit können sowohl Standard- als auch diverse Nicht-Standard-Steuerelemente semantisch so angereichert werden, dass sie durch assistierende Technologien (z.B. Screenreader) zugänglich vermittelt werden und bedienbar sind. Grundlage hierfür ist stets eine solide Tastatur-Bedienbarkeit, siehe 📜-2.1.1.

Die [ARIA Spezifikation](https://www.w3.org/WAI/standards-guidelines/aria/) für zugängliche Webanwendungen der Web Accessibility Initiative (WAI) beschreibt die vorhandenen Möglichkeiten; im [ARIA Authoring Practices Guide (APG)](https://www.w3.org/WAI/ARIA/apg/patterns/) werden konkrete Anwendungsfälle demonstriert.

Die Implementierung von Steuerelementen mittels ARIA ist nicht trivial, denn die benötigten Rollen, Zustände und Attribute (und das Zusammenspiel von deren teilweise recht komplexen Kombinationen) müssen vollständig und korrekt umgesetzt werden.

Zusätzlich kennen die aktuellen Browser und assistierenden Technologien nicht alle verfügbaren Rollen, Zustände und Attribute. Teilweise werden sie unterschiedlich (oder auch fehlerhaft) interpretiert. Dies macht es machmal schwierig, ein Steuerelement auf allen gängigen Kombinationen von Ein- und Ausgabegeräten durchgängig zugänglich umzusetzen. Schnell sind solche Elemente auf anderen Plattformen (z.B. auf Mobilgeräten) nicht mehr barrierefrei bedienbar.

Wir empfehlen deshalb, bereits bei der Spezifizierung einer Benutzeroberfläche genau zu überlegen, ob die gewünschte Funktionalität tatsächlich den Einsatz solcher Widgets erfordert. Es sollte auf jeden Fall nach Möglichkeiten gesucht werden, angedachte Funktionalitäten zu vereinfachen, so dass sie mit den von HTML standardmässig angebotenen Steuerelementen umgesetzt werden können. Viele scheinbar komplexe Anforderungen, welche auf den ersten Blick den Einsatz von Widgets notwendig erscheinen lassen, können in einfachere Teilanforderungen zerstückelt werden: ein Autocomplete (✅-101) etwa kann ein einfaches Textfeld sein, welches eine Gruppe von darunter liegenden Radiobuttons filtert.

Zudem versuchen viele Implementierungen, die Funktionalität von bereits existierenden Standard HTML-Steuerelementen exakt zu imitieren, meist aufgrund von speziellen Anforderungen an das visuelle Design. Ob für solche visuellen Details der zu erwartende Implementierungs-Aufwand gerechtfertigt ist, muss abgewogen werden.

**Vorsicht:** Viele angebotene JavaScript-Widget-Bibliotheken behaupten, auf Zugänglichkeit hin optimiert zu sein. Dies ist oft irreführend, da Ansichten über Zugänglichkeit sowie Zielplattformen sich unterscheiden können. Stellen Sie die Zugänglichkeit solcher Bibliotheken deshalb immer im Voraus selber sicher.

**Hinweis:** Führung des Tastaturfokus ist oft wichtig bei JavaScript-Widgets (siehe dazu auch 📜-2.1.1 und 📜-2.4.3). Rückmeldungen an assistierende Technologien sind ebenso essenziell: Mit einer guten Fokusführung wird dies oft bereits ausreichend sichergestellt. Es kann aber auch durch Verwendung von Live Regions (z.B. `role="alert"`) erfolgen; setzen Sie diese aber mit Bedacht ein, um den Audiokanal nicht zu überstrapazieren (siehe dazu auch 📜-4.1.3).

### Verantwortlichkeiten

- Das Designteam definiert JavaScript-Widgets mit dem Augenmerk auf Einfachheit und Bedienbarkeit mittels assistierender Technologien.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um. Werden JavaScript-Widget-Bibliotheken verwendet, so werden diese erst eingehend auf Zugänglichkeit hin untersucht.
- Auftraggebende sollten sich bewusst sein, dass die Umsetzung von zugänglichen JavaScript-Widgets Zusatzaufwand bedeuten kann.

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#name-role-value>
- <https://www.w3.org/WAI/WCAG22/quickref/#name-role-value>