---
id: "13"
wcag_criterion_id: "1"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-13 16:25:00"
---

# ✅ Dekorative Grafiken

WCAG-Kriterium: [📜 1.1.1 Nicht-Text-Inhalt - A](..)

## Beschreibung

Dekorative Grafiken, welche als `<img>` umgesetzt sind, weisen ein leeres `alt`-Attribut auf, damit sie von assistierenden Geräten ignoriert werden können.

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Images > Display Alt Attributes: Angezeigte Alternativtexte mit Bildern abgleichen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Image Alt Text Viewer Extension](/de/tags/image-alt-text-viewer-extension) ausführen (oder in [🏷️ Web Developer Extension](/de/tags/web-developer-extension) unter "Images" → "Display Alt Attributes" wählen)
1. Sicherstellen, dass dekorative Grafiken vom Screenreader ignoriert werden
    - ⚠️ Wenn ein solches Bild mittels `<img>` umgesetzt ist, muss dessen `alt`-Attribut leer sein. Bei einem als CSS `background-image: url(...)` umgesetzten dekorativen Bild muss nichts weiter getan werden (da es dadurch sowieso als dekorativ eingestuft wird).
    - **🙂 Beispiel:** Ein kleines, dekoratives Ornament wird als visueller Aufteiler (Spacer) zwischen zwei Paragrafen eingesetzt
    - **🙂 Beispiel:** Ein Reisebüro möchte auf seine Reiseangebote für Meeres-Destinationen aufmerksam machen und zeigt ein dekoratives Foto eines Strands mit Palmen am Meer

⚠️ Es ist oft gar nicht so leicht zu entscheiden, ob ein Bild tatsächlich dekorativ ist. Auch wenn man mit einem Bild z.B. nur eine Emotion hervor rufen möchte (etwa obiges Strandfoto), dann möchten Screenreader-Nutzende vielleicht auch eine solche Emotion erfahren? Insofern wäre es ggf. falsch, das Bild als rein dekorativ einzustufen; stattdessen wäre ein Alternativtext wie "Sehnen Sie sich auch nach einem Sandstrand mit Palmen am Meer?" u.U. besser. Hier gehen die Meinungen aber stark auseinander: gewisse Leute wollen möglichst keine unnötigen Details, andere wiederum möchten möglichst nichts verpassen! Ein guter Kompromiss wäre vielleicht, den Alternativtext so zu beginnen, dass der eher dekorative Charakter eines Bildes sofort ersichtlich wird, etwa "Stimmungsbild: Hängematte am Strand...". Schlussendlich kann der Seitenbetreiber entscheiden, was sinnvoll ist, Hauptsache er hat sich die notwendigen Gedanken gemacht.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen
1. Prüfung analog zu Web (dekorative Bilder und Grafiken müssen als Artefakte ausgezeichnet sein, damit Screenreader diese ignorieren).

## Details zum blinden Testen

Beschränkt testbar: vielleicht stolpert man mal über ein Bild mit Alternativtext "Platzhalter" o.ä., aber generell schwierig zu beurteilen, wenn man den Bildinhalt nicht kennt.

## Screenshots typischer Fälle

![Dekorative Grafik](images/dekorative-grafik.png)
