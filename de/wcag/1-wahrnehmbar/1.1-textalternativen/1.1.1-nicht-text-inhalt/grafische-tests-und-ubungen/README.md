---
id: "3"
wcag_criterion_id: "1"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-13 16:11:33"
---

# Prüfpunkt: Grafische Tests und Übungen

## Beschreibung

Tests und Übungen, deren Inhalt zwingend aus Nicht-Text-Inhalt bestehen muss, weisen einen Alternativtext auf, der dessen Zweck beschreibt (ohne die Information, die benötigt wird, um den Test oder die Übung zu bestehen).

## Prüfmethode (in Kürze)

**Web Developer Toolbar:** Images > Display Alt Attributes: Angezeigte Alternativtext mit Inhalt vergleichen: Beschreibt dieser den Zweck des Inhalts passend?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. 🏷️-32 ausführen (oder in 🏷️-51 unter "Images" → "Display Alt Attributes" wählen)
1. Sicherstellen, dass solche Grafiken einen passenden Alternativtext aufweisen
    - **🙂 Beispiel:** Bei einem Farbenblindheit-Test hat eine Farbtafel den Alternativtext "Ishihara Farbenblindheit-Test: Welche Zahl sehen Sie auf diesem Bild?"
        - ⚠️ Ausserhalb eines Test-Settings macht es natürlich Sinn, die Farbtafel genauer zu beschreiben, z.B. "Farbenblindheit-Test: Ishihara-Farbtafel 45"

## Screenshots typischer Fälle

![Farbenblindheit-Test](images/farbenblindheit-test.png)