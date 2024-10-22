---
id: "10"
wcag_criterion_id: "1"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-13 16:22:24"
---

# Prüfpunkt: Verlinktes Seiten-Logo

## Beschreibung

Das Seiten-Logo (mit Link zur Startseite) verfügt über eine sinnvolle Textalternative (Muster `alt="Logo Firmenname, zur Startseite"`)

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Images > Display Alt Attributes: Angezeigte Alternativtexte mit Bildern abgleichen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. **🏷️-32 Image Alt Text Viewer Extension** ausführen (oder in **🏷️-51 Web Developer Extension** unter "Images" → "Display Alt Attributes" wählen)
1. Sicherstellen, dass verlinkte Seiten-Logos einen passenden Alternativtext aufweisen
    - ⚠️ Für sonstige verlinkte Grafiken existiert **✅-6 Verlinkte Grafiken**!
    - **🙂 Beispiel:** Das Logo einer Firma verlinkt auf die Startseite; der Alternativtext ist "Logo ACME Inc., zur Startseite"
        - **😡 Beispiel:** Bei "ACME Inc." alleine fehlt das Linkziel
        - **😡 Beispiel:** Bei "Zur Startseite" alleine fehlt der Bildinhalt
    - **🙂 Beispiel:** Das Logo einer Firma ist **nicht** verlinkt; der Alternativtext ist "Logo ACME Inc."

## Screenshots typischer Fälle

![Verlinktes Logo auf Blick.ch](images/verlinktes-logo-auf-blickch.png)

![Verlinktes Logo auf Wetzikon.ch, aber ohne Hinweis auf Logo](images/verlinktes-logo-auf-wetzikonch.png)