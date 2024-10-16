---
id: "42"
wcag_criterion_id: "106"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 13:18:55"
---

# Prüfpunkt: Absätze semantisch korrekt

## Beschreibung

Absätze sind semantisch korrekt ausgezeichnet, nicht nur visuell (z.B. mittels doppelten `<br>`).

## Prüfmethode (in Kürze)

**Bookmarklet "Inhalte gegliedert":** Ausführen und mit Seite abgleichen: Sind Absätze korrekt ausgezeichnet? Fallen irgendwo `<br>`-Elemente ungünstig auf?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. 🏷️-44 ausführen (oder mit 🏷️-13 direkt mit `P` von Paragraf zu Paragraf springen)
    - ⚠️ Um Probleme genauer zu evaluieren, ist der 🏷️-47 nützlich
1. Sicherstellen, dass Textblöcke korrekt als `<p>` ausgezeichnet sind
    - **🙂 Beispiel:** Textblöcke auf einer Seite sind jeweils als eigene `<p>` ausgezeichnet
    - **😡 Beispiel:** Textblöcke sind als `<div>` (oder ähnlich) ausgezeichnet
    - **😡 Beispiel:** Ein einzelnes `<p>` umgibt mehrere Textblöcke; dazwischen befinden sich doppelte Zeilenumbrüche (`<br>`), um visuell den Eindruck mehrerer Absätze zu erzeugen

⚠️ Es geht hier insbesondere darum, durch klare Strukturierung die Navigation innerhalb von Fliess-Texten zu erleichtern. Sehr kurze Schriftzüge (wie z.B. der Name eines Autors am Anfang eines Artikels oder ein "Copyright 2024 by ACME Inc." o.ä. im Footer) dürfen durchaus als `<div>` oder `<span>` ausgezeichnet sein.

## Screenshots typischer Fälle

![Absatz mit doppelten BR vorgegaukelt](images/absatz-mit-doppelten-br-vorgegaukelt.png)

![Absätze nur als DIV formatiert](images/abstze-nur-als-div-formatiert.png)