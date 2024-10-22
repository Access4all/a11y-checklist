---
id: "47"
parent_id: "58"
created_at: "2024-06-01 08:51:34"
---

# 🏷️ DOM Inspektor

## Beschreibung

Jeder moderne Desktop-Browser erlaubt das Inspizieren einer Webseite: rechtsklicken auf ein beliebiges Element (z.B. ein Bild oder eine Überschrift), dann "Untersuchen" wählen (siehe [Chrome: Erste Schritte zum Anzeigen und Ändern des DOM](https://developer.chrome.com/docs/devtools/dom)). Nun wird der gesamte DOM (Document Object Model) als Code-Baumstruktur neben der Webseite (oder in einem eigenen Fenster) angezeigt.

Aus dem Code kann oft vieles bezüglich Barrierefreiheit abgeleitet werden, insbesondere ob überhaupt semantische Elemente verwendet wurden oder nicht, z.B.:

- Eine Überschrift wurde **nicht** als `<h1>` umgesetzt, sondern als `<div class="h1">`.
    - 😡 Verletzung von [✅ Überschriften semantisch korrekt](/de/wcag/1.3.1a-ueberschriften-struktur/ueberschriften-semantisch-korrekt).
- Ein Pflichtfeld wurde **nicht** mittels `required`-Attribut ausgezeichnet.
    - 😡 Verletzung von [✅ Pflichtfelder](/de/wcag/3.3.2-beschriftungen-labels-oder-anweisungen/pflichtfelder).
- Eine Gruppe von Radiobuttons werden **nicht** von einem `<fieldset>` umschlossen.
    - 😡 Verletzung von [✅ Fieldset / Legend](/de/wcag/1.3.1c-formular-beziehungen/fieldset-legend).
- Ein Bild hat **kein** `alt`-Attribut.
    - 😡 Verletzung von [✅ Informative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/informative-grafiken).

In solchen Fällen können bereits jetzt viele WCAG-Anforderungen als "nicht erfüllt" erkannt werden, ohne dass nähere Untersuchung notwendig ist.

Falls aber tatsächlich die erwartete **Semantik vorhanden scheint**, so reicht das Inspizieren über den DOM meistens nicht aus, um zu beurteilen, ob dieselbe auch tatsächlich korrekt ist bzw. ob sie im Kontext ihrer Umgebung Sinn macht. Im Normalfall muss dies dann aus Sicht des Endnutzers sichergestellt werden, z.B. durch aktives Ausprobieren mit Screenreader [🏷️ NVDA Screenreader](/de/tags/werkzeuge/screenreader/desktop-screenreader/nvda-screenreader).

### DOM-Inspektor vs. Boorkmarklets

Der DOM-Inspektor ist ein sehr mächtiges Tool und entsprechend auch komplex in der Handhabung. Alternativ nutzen wir diverse Bookmarklets, die (einmal installiert) schnell und einfach per Mausklick gewünschte Informationen liefern können, z.B.:

- [🏷️ H123 Bookmarklet](/de/tags/werkzeuge/bookmarklets/h123-bookmarklet) für Überprüfung von Überschriften-Strukturen
- [🏷️ Inhalte gegliedert Bookmarklet](/de/tags/werkzeuge/bookmarklets/inhalte-gegliedert-bookmarklet) für Überprüfung, ob semantische Elemente vorhanden sind
- (Weitere)

Bei Bookmarklets muss man sich bewusst sein, dass diese heuristisch ("Quick & Dirty") arbeiten. Sprich: sie bieten oft bloss eine annähernde Analyse und können niemals die Robustheit des DOM-Inspektors, geschweige denn die Ganzheitlichkeit der Erfahrung durch Verwendung eines Screenreaders [🏷️ NVDA Screenreader](/de/tags/werkzeuge/screenreader/desktop-screenreader/nvda-screenreader) bieten.

Z.B. kann man sich nicht sicher sein, dass ein Bookmarklet, welches Überschriften untersucht, neben Standard-HTML (also `<h1>`, `<h2>`, etc.) auch ARIA berücksichtigt (`role="heading"`, `aria-level="3"`, etc.).