---
id: "46"
wcag_criterion_id: "106"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 07:31:21"
---

# ✅ Zitate semantisch korrekt

WCAG-Kriterium: [📜 1.3.1e Semantisch richtiges Markup](..)

## Beschreibung

Visuell erkennbare Zitate sind semantisch korrekt ausgezeichnet (z.B. als `<blockquote>` und `<cite>`), sodass der jeweilige Text auch beim Einsatz von assistierenden Technologien als Zitat erkannt wird.

## Prüfmethode (in Kürze)

**Bookmarklet "Inhalte gegliedert":** Ausführen und mit Seite abgleichen: Sind Zitate als solche ausgezeichnet?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Inhalte gegliedert Bookmarklet](/de/tags/inhalte-gegliedert-bookmarklet) ausführen (oder mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) direkt mit `Q` von Zitat zu Zitat springen)
    - ⚠️ Um Probleme genauer zu evaluieren, ist der [🏷️ DOM Inspektor](/de/tags/dom-inspektor) nützlich
1. Sicherstellen, dass Zitate korrekt als `<blockquote>` ausgezeichnet sind
    - **🙂 Beispiel:** Kennedy's Zitat "Ich bin ein Berliner!" ist als `<blockquote>` ausgezeichnet
        - ⚠️ Es dürfen weitere Elemente wie `<p>`, `<ul>`, etc. enthalten sein
        - **😡 Beispiel:** Es ist als `<p class="quote">` o.ä. umgesetzt

⚠️ Es geht hier insbesondere um Blockzitate, welche auch visuell klar als solche erkennbar sind! Kurze Zitate, welche innerhalb eines Fliesstexts stehen, können als `<q>` umgesetzt werden.

## Screenshots typischer Fälle

![Ein Zitat als BLOCKQUOTE umgesetzt](images/ein-zitat-als-blockquote-umgesetzt.png)

![Ein Zitat als DIV umgesetzt](images/ein-zitat-als-div-umgesetzt.png)
