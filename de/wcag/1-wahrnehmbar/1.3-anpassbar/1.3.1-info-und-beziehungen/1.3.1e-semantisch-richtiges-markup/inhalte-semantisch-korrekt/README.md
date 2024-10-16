---
id: "43"
wcag_criterion_id: "106"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 07:29:12"
---

# Prüfpunkt: Inhalte semantisch korrekt

## Beschreibung

Inhalte befinden sich innerhalb semantisch bedeutsamer HTML-Elemente (z.B. `<h#>`, `<p>`, `<ul>`, `<ol>`, etc.); das Verwenden von `<div>`- oder `<span>`-Elementen (die keine semantische Relevanz aufweisen) ist nicht ausreichend.

## Prüfmethode (in Kürze)

**Bookmarklet "Inhalte gegliedert":** Ausführen und mit Seite abgleichen: Befinden sich Inhalte in semantisch bedeutsamen Containern?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit 🏷️-13 Inhalte lesen (oder mit 🏷️-47 direkt untersuchen)
1. Sicherstellen, dass unterschiedliche Inhalte korrekt als solche angesagt werden
    - ⚠️ Für viele Inhalts-Typen (z.B. 📜-1.3.1a, 📜-1.3.1b, ✅-42) gibt es spezifischere Prüfpunkte! Der vorliegende Prüfpunkt zielt auf weniger oft angetroffene Inhalts-Typen ab; auch dient er dazu, "frei umher schwebende Texte" (in `<div>`, `<span>`, o.ä.) abzustrafen, welche keine Semantik haben und vom Tester nicht klar einem Inhalts-Typ zugeordnet werden können.
    - **🙂 Beispiel:** Ein Blockzitat ist korrekt als `<blockquote>` ausgezeichnet
        - **😡 Beispiel:** Es ist als `<p>`, `<div>` o.ä. ausgezeichnet
    - **🙂 Beispiel:** Eine Adresse ist korrekt als `<address>` ausgezeichnet
        - ⚠️ Zeilenumbrüche in Adressen sind eine der wenigen Situationen, in welchen `<br>` angebracht sind!
    - **🙂 Beispiel:** Ein besonders betontes Wort in einem Satz ist mit `<em>` oder `<strong>` formatiert, z.B. `<p>Wir müssen <strong>jetzt</strong> handeln!</p>`.
        - **😡 Beispiel:** Das Wort ist als `<i>`, `<b>`, `<span class="bold">` o.ä. ausgezeichnet

⚠️ Es geht hier insbesondere darum, durch klare Strukturierung die Navigation innerhalb von Fliess-Texten zu erleichtern. Sehr kurze Schriftzüge (wie z.B. der Name eines Autors am Anfang eines Artikels oder ein "Copyright 2024 by ACME Inc." o.ä. im Footer) dürfen durchaus als `<div>` oder `<span>` ausgezeichnet sein.

## Screenshots typischer Fälle

![Block-Zitat korrekt als BLOCKQUOTE formatiert](images/block-zitat-korrekt-als-blockquote-formatiert.png)