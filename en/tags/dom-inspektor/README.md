---
id: "47"
parent_id: "75"
created_at: "2024-06-01 08:51:34"
---

# 🏷️ DOM Inspektor

## Description

Jeder moderne Desktop-Browser erlaubt das Inspizieren einer Webseite: rechtsklicken auf ein beliebiges Element (z.B. ein Bild oder eine Überschrift), dann "Untersuchen" wählen (siehe [Chrome: Erste Schritte zum Anzeigen und Ändern des DOM](https://developer.chrome.com/docs/devtools/dom)). Nun wird der gesamte DOM (Document Object Model) als Code-Baumstruktur neben der Webseite (oder in einem eigenen Fenster) angezeigt.

Aus dem Code kann oft vieles bezüglich Barrierefreiheit abgeleitet werden, insbesondere ob überhaupt semantische Elemente verwendet wurden oder nicht, z.B.:

- Eine Überschrift wurde **nicht** als `<h1>` umgesetzt, sondern als `<div class="h1">`.
    - 😡 Verletzung von [✅ Headings semantically correct](/en/wcag/1.3.1a-headings-structure/headings-semantically-correct).
- Ein Pflichtfeld wurde **nicht** mittels `required`-Attribut ausgezeichnet.
    - 😡 Verletzung von [✅ Mandatory fields](/en/wcag/3.3.2-labels-or-instructions/mandatory-fields).
- Eine Gruppe von Radiobuttons werden **nicht** von einem `<fieldset>` umschlossen.
    - 😡 Verletzung von [✅ Feldset / Legend](/en/wcag/1.3.1c-forms-labels-and-fieldsets/feldset-legend).
- Ein Bild hat **kein** `alt`-Attribut.
    - 😡 Verletzung von [✅ Informative graphics](/en/wcag/1.1.1-non-text-content/informative-graphics).

In solchen Fällen können bereits jetzt viele WCAG-Anforderungen als "nicht erfüllt" erkannt werden, ohne dass nähere Untersuchung notwendig ist.

Falls aber tatsächlich die erwartete **Semantik vorhanden scheint**, so reicht das Inspizieren über den DOM meistens nicht aus, um zu beurteilen, ob dieselbe auch tatsächlich korrekt ist bzw. ob sie im Kontext ihrer Umgebung Sinn macht. Im Normalfall muss dies dann aus Sicht des Endnutzers sichergestellt werden, z.B. durch aktives Ausprobieren mit Screenreader [🏷️ NVDA Screenreader](/en/tags/nvda-screenreader).

### DOM-Inspektor vs. Boorkmarklets

Der DOM-Inspektor ist ein sehr mächtiges Tool und entsprechend auch komplex in der Handhabung. Alternativ nutzen wir diverse Bookmarklets, die (einmal installiert) schnell und einfach per Mausklick gewünschte Informationen liefern können, z.B.:

- [🏷️ H123 Bookmarklet](/en/tags/h123-bookmarklet) für Überprüfung von Überschriften-Strukturen
- [🏷️ Inhalte gegliedert Bookmarklet](/en/tags/inhalte-gegliedert-bookmarklet) für Überprüfung, ob semantische Elemente vorhanden sind
- (Weitere)

Bei Bookmarklets muss man sich bewusst sein, dass diese heuristisch ("Quick & Dirty") arbeiten. Sprich: sie bieten oft bloss eine annähernde Analyse und können niemals die Robustheit des DOM-Inspektors, geschweige denn die Ganzheitlichkeit der Erfahrung durch Verwendung eines Screenreaders [🏷️ NVDA Screenreader](/en/tags/nvda-screenreader) bieten.

Z.B. kann man sich nicht sicher sein, dass ein Bookmarklet, welches Überschriften untersucht, neben Standard-HTML (also `<h1>`, `<h2>`, etc.) auch ARIA berücksichtigt (`role="heading"`, `aria-level="3"`, etc.).

### DOM-Inspektor und der Accessibility Tree

Im DOM kann zwischen der "normalen" Ansicht und dem Accessibility Tree ([🏷️ DOM Inspektor](/en/tags/dom-inspektor)) hin und her gewechselt werden:

- [Anleitung für Chrome](https://developer.chrome.com/blog/full-accessibility-tree?hl=de)
- [Anleitung für Firefox](https://firefox-source-docs.mozilla.org/devtools-user/accessibility_inspector/index.html)

### Mit Screenreader benutzen

- Mit Screenreader zum gewünschten Element navigieren, z.B. eine Grafik
- `Shift`-`F10` öffnet das Kontextmenü (wie Rechtsklick)
- `Untersuchen` wählen
- In der DOM-Baumansicht kann man nun mit Pfeiltasten weiter navigieren
- `F2` drücken um den HTML-Code des aktuellen Elements zu bearbeiten, dann `Ctrl`-`Enter` um zu bestätigen
    - Alternativ: Wieder Kontextmenü öffnen (`Shift`-`F10`) und z.B. "Attribut hinzufügen" wählen
- `F12` drücken um Dev-Tools zu schliessen und zurück zu kehren zur Webseite🇩🇪 Currently only available in German.
