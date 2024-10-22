---
id: "58"
wcag_criterion_id: "91"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 07:44:00"
---

# Checkpoint: Viewport minimum dimensions

## Description

Content can be displayed without restrictions (e.g. overlapping) and without horizontal scrolling in the viewport minimum dimensions of `320x256` CSS pixels. This corresponds to an enlargement to 400%.

## Method

**Browser:** Gradually increase the zoom to 400% and ensure that no display problems occur (e.g. overlapping) and that scrolling is only necessary in one direction at most.

## Details on web applicability (specific test steps)

🇩🇪 Currently only available in German.

## Screenshots

![Mindest-Dimension setzen im DOM-Inspektor](images/mindest-dimension-setzen-im-dom-inspektor.png)

![Ein Karussell muss man zwar links und rechts scrollen zum Wechseln der Folie, aber die Inhalte der Folie brechen wie gewünscht um. Alles okay!](images/ein-karussell-muss-man-zwar-links-und-rechts-scrollen-zum-wechseln-der-folie-aber-die-inhalte-der-folie-brechen-wie-gewnscht-um-alles-okay.png)

![Dito: die Auswahl eines Artikels scrollt horizontal, aber der Inhalt bricht um.](images/dito-die-auswahl-eines-artikels-scrollt-horizontal-aber-der-inhalt-bricht-um.png)