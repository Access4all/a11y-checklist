---
id: "24"
parent_id: "68"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/no-keyboard-trap.html"
created_at: "2015-08-04 14:36:00"
---

# 2.1.2 Keine Tastaturfalle - A

## Verstehen (in Kürze)

Inhalte und Funktionalitäten dürfen den **Tastatur-Fokus nicht blockieren**. Dies ermöglicht es, erreichte Elemente auch wieder zu verlassen.

## Verstehen (ausführlich)

Wenn interaktive Elemente den Fokus nicht mehr frei geben (d.h. man kann ein Element oder eine Gruppe von Elementen nicht mittels `Tab` oder `Shift`-`Tab` verlassen), dann verunmöglicht dies ein Interagieren mit dem Rest der Seite per Tastatur komplett (siehe **📜-2.1.1 Tastatur**).

Tastatur-Fallen traten früher häufig bei Flash- oder Video-Inhalten auf. Heutzutage passieren Sie fast ausschliesslich bei unkorrekter Fokus-Führung per JavaScript, siehe **📜-2.4.3 Fokus-Reihenfolge**.

**Hinweis:** In gewissen Fällen ist das Blockieren des Fokus vorübergehend legitim, etwa wenn ein modaler Dialog (**✅-103 Dialoge**) den Fokus innerhalb des eigenen Inhalts behält. Der Dialog muss aber jederzeit geschlossen und der Fokus wieder freigegeben werden können: etwa durch Aktivieren eines "Schliessen"-Schalters, oder durch einen anderen Mechanismus (etwa die `Esc`-Taste).

### Verantwortlichkeiten

- Das Entwicklungsteam setzt die Fokus-Führung korrekt um.

## Checkpoints

- [Tastaturfallen](tastaturfallen)