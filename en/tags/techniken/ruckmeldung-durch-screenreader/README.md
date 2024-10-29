---
id: "27"
parent_id: "60"
created_at: "2024-03-09 14:31:55"
---

# 🏷️ Rückmeldung durch Screenreader

## Description

Wann immer man etwas tut mit Screenreader, muss irgend eine Rückmeldung kommen. Oft passiert das, ohne dass man etwas Spezifisches dafür tun muss, z.B.:

- "Gewählt" wenn man eine native Checkbox (`<input type="checkbox">`) anwählt
- "Ausgeklappt" wenn man eine native Options-Liste (`<select>`) ausklappt
- Beim Absenden eines Formulars wird die Seite neu geladen und der Titel (`<title>`) wird automatisch angesagt vom Screenreader

In anderen Fällen muss man spezifisch etwas dafür tun:

- "Expanded" ([🏷️ aria-expanded](/en/tags/aria-attribute/aria-expanded)) wenn man ein Dropdown-Menü ([✅ Disclosure (pop-up elements)](/en/wcag/4.1.2a-advanced-controls-widgets/disclosure-pop-up-elements)) aufklappt
- "Pressed" ([🏷️ aria-pressed](/en/tags/aria-attribute/aria-pressed)) wenn man in einer SPA ([🏷️ Single-Page-App (SPA)](/en/tags/techniken/single-page-app-spa)) einen Eintrag im Menü ([🏷️ Navigation (Menü)](/en/tags/javascript-widgets/navigation-menu)) anwählt
    - Oder den Titel der nun angezeigten Seite mittels Live-Region ([🏷️ ARIA Live Regions](/en/tags/techniken/aria-live-regions))
- Wenn man einen Dialog per Klick auf einen Schalter geöffnet hat, wird der Fokus in den Dialog verschoben ([🏷️ Fokus-Management](/en/tags/techniken/tastatur-fokus/fokus-management)) und das fokussierte Element wird angesagt

Beachte auch [🏷️ Auf Interaktion folgt stets Rückmeldung!](/en/tags/umsetzungs-kodex/auf-interaktion-folgt-stets-ruckmeldung)!