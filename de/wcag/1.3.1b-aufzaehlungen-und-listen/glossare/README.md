---
id: "34"
wcag_criterion_id: "78"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-03-14 13:00:51"
video_ids: "[]"
---

# ✅ Glossare

WCAG-Kriterium: [📜 1.3.1b Aufzählungen und Listen](..)

## Beschreibung

Glossare und ähnliche Informationslisten sind als Definitionslisten formatiert.

## Prüfmethode (in Kürze)

**Bookmarklet "Inhalte gegliedert":** Ausführen und mit Seite abgleichen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Inhalte gegliedert Bookmarklet](/de/tags/inhalte-gegliedert-bookmarklet) ausführen
1. Sicherstellen, dass Definitions-Listen als `<dl>` umgesetzt sind
    - **🙂 Beispiel:** Ein Glossar ist als `<dl>` umgesetzt: der Begriff (Term) ist als `<dt>`, die Erläuterung (Definition) als `<dd>` ausgezeichnet
    - **🙂 Beispiel:** Ein Glossar ist als `<ul>` umgesetzt: der Begriff ist mittels `<strong>` rein visuell von der Erläuterung abgesetzt

### Nachprüfen mit Screenreader

⚠️ Eine Liste muss immer aus einem Container (`<ul>` oder `<ol>`) bestehen und darf als direkte Kind-Elemente nur `<li>` beinhalten! Bei zweifelhaftem Code (z.B. Einsatz von `role="list"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- `L` drücken, um Listen (auch Definitions-Listen) direkt anzuspringen
- `I` drücken, um Punkte innerhalb einer Liste direkt anzuspringen

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Auf hybride Inhalte 1:1 anwendbar.

Native Apps scheinen aber keine spezifischen Definitions-Listen-Elemente zu kennen.

## Prüfmethode für PDF (Ergänzungen zu Web)

Es gibt in PDFs keine Definitionslisten.

## Details zum blinden Testen

Definitions-Listen sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

![Definitions-Liste in A4AA](images/definitions-liste-in-a4aa.png)

## Videos

Keine Videos verfügbar.
