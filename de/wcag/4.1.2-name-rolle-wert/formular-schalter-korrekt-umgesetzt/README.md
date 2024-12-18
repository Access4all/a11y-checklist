---
id: "110"
wcag_criterion_id: "61"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 14:19:20"
---

# ✅ Formular-Schalter korrekt umgesetzt

WCAG-Kriterium: [📜 4.1.2 Name, Rolle, Wert - A](..)

## Beschreibung

Formular-Schalter sind korrekt umgesetzt (als `<button>`-Element oder `<input type="submit">`-Element).

## Prüfmethode (in Kürze)

Formularelemente auflisten und prüfen, ob Schalter korrekt umgesetzt sind.

## Prüfmethode für Web (ausführlich)

1. Seite öffnen
1. Sicherstellen, dass Formular-Schalter korrekt umgesetzt sind
    - **🙂 Beispiel:** Schalter sind als `<input type="submit">` oder `<button>` umgesetzt
    - **🙄 Beispiel:** Schalter sind als `<div role="button" tabindex="0">` o.ä. umgesetzt → ⚠️ Das ist technisch zwar in Ordnung, aber dennoch nicht empfehlenswert
    - **😡 Beispiel:** Schalter sind als `<div>` o.ä. umgesetzt

## Screenshots typischer Fälle

![Ein korrekt umgesetzter Schalter](images/ein-korrekt-umgesetzter-schalter.png)

![Ein mit ARIA umgesetzter Schalter](images/ein-mit-aria-umgesetzter-schalter.png)
