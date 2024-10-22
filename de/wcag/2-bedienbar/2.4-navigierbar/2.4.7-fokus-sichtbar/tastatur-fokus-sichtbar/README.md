---
id: "81"
wcag_criterion_id: "40"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 13:59:23"
---

# Prüfpunkt: Tastatur-Fokus sichtbar

## Beschreibung

Der Tastatur-Fokus ist genügend sichtbar, z.B. durch einen gut sichtbaren Rahmen (für alle fokussierbaren Elemente wie Links, Schaltflächen, Radio-Buttons, Checkboxen, Ausklapplisten, verlinkte grafische Elemente, etc.).

## Prüfmethode (in Kürze)

**Tastatur:** Durch Elemente navigieren mittels Tab-Taste und darauf achten, dass Fokus sichtbar ist.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit `Tab`-Taste durch die Seite navigieren und jeweils prüfen:
    - Sind alle interaktiven Elemente bei Fokus gut als fokussiert erkennbar?
        - **🙂 Beispiel:** Umrandung, deutlich erkennbarer Farbwechsel, o.ä.
        - **😡 Beispiel:** Kaum oder gar nicht sichtbarer Fokus.
            - ⚠️ Kann auch daran liegen, dass Elemente gar nicht fokussierbar sind (siehe **✅-63 Mit der Tastatur bedienbar**).

### ⚠️ WCAG 2.1 vs. 2.2

Mindest-Kontrast bei Fokus-Styles wird erst ab WCAG 2.2 und nur ab Level AAA gefordert! Dennoch versuchen wir stets zu überzeugen, dass dies generell wünschenswert ist.

## Screenshots typischer Fälle

### Clearly visible focus

![Clear outline of the focussed menu item](images/clear-outline-of-focussed-menu-item.png)

![Weiterer gut sichtbarer Fokus](images/weiterer-gut-sichtbarer-fokus.png)

### Poorly visible focus

![Kaum sichtbare Umrandung](images/kaum-sichtbare-umrandung.png)

![Kaum sichtbare Hintergrundfarbe](images/kaum-sichtbare-hintergrundfarbe.png)