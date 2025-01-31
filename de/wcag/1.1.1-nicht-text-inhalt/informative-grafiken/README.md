---
id: "1"
wcag_criterion_id: "1"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-12 18:46:48"
---

# ✅ Informative Grafiken

WCAG-Kriterium: [📜 1.1.1 Nicht-Text-Inhalt - A](..)

## Beschreibung

Informative Grafiken weisen einen Alternativtext auf, der äquivalente Informationen vermittelt.

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Images > Display Alt Attributes: Angezeigte Alternativtexte mit Bildern abgleichen. Oder: Code-Analyse.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Image Alt Text Viewer Extension](/de/tags/image-alt-text-viewer-extension) ausführen (oder in [🏷️ Web Developer Extension](/de/tags/web-developer-extension) unter "Images" → "Display Alt Attributes" wählen)
1. Sicherstellen, dass informative Grafiken einen passenden Alternativtext aufweisen
    - **🙂 Beispiel:** Ein Mitarbeiter-Foto hat den Alternativtext "Profilfoto von Hans Muster"
        - **🙂 Beispiel:** "Hans Muster" reicht ebenfalls, aber etwas mehr Info kann sinnvoll sein
        - **🙄 Beispiel:** "Profilfoto", "Foto des Mitarbeiters" reicht, wenn die Seite nur einen einzelnen Mitarbeiter zeigt (Foto eindeutig zuordenbar)
            - **😡 Beispiel:** Wenn es sich um eine Auflistung mehrerer Mitarbeiter handelt, reicht das nicht (Fotos nicht eindeutig zuordenbar)
        - **😡 Beispiel:** Es hat gar keinen Alternativtext
    - **🙂 Beispiel:** Ein Firmenlogo hat den Alternativtext "ACME Inc." oder "Logo von ACME Inc."
        - **😡 Beispiel:** "Logo"
        - **😡 Beispiel:** Das Logo ist nicht als Bild (`<img>`, `<svg role="img">` o.ä.) umgesetzt, sondern nur per CSS (z.B. `background-image`)
    - **🙂 Beispiel:** Ein allein stehendes Warenkorb-Symbol hat den Alternativtext "Warenkorb"
        - **🙄 Beispiel:** Das Warenkorb-Symbol steht neben einem zusätzlichen Text "Warenkorb" o.ä. → damit wird das Symbol redundant und sollte besser als dekorativ markiert werden (siehe [✅ Dekorative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/dekorative-grafiken))
    - **🙂 Beispiel:** In einer Foto-Gallerie werden Fotos eines Team-Ausflugs gezeigt; jedes Foto hat einen Alternativ-Text, z.B. "Hans und Maria sitzen beim Feuer und plaudern fröhlich miteinander"
        - **🙄 Beispiel:** "Mitarbeitende reden" reicht, aber etwas mehr Kontext wäre nett
        - **🙄 Beispiel:** "Geschäftsausflug 2023, Foto Nr. 123" ist wirklich extrem minimalistisch
        - **😡 Beispiel:** "DSC_123.jpg" ist definitiv zu minimalistisch

## Screenshots typischer Fälle

![Beispiel-Bild auf WebAIM (mit Web Developer Tools aktiv)](images/beispiel-bild-auf-webaim.png)

![Dasselbe Beispiel auf WebAIM (mit Image Alt Text Viewer aktiv)](images/dasselbe-beispiel-auf-webaim.png)
