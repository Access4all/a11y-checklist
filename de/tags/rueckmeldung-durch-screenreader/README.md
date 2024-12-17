---
id: "27"
parent_id: "60"
created_at: "2024-03-09 14:31:55"
---

# 🏷️ Rückmeldung durch Screenreader

## Beschreibung

Wann immer man etwas tut mit Screenreader, muss irgend eine Rückmeldung kommen. Oft passiert das, ohne dass man etwas Spezifisches dafür tun muss, z.B.:

- "Gewählt" wenn man eine native Checkbox (`<input type="checkbox">`) anwählt
- "Ausgeklappt" wenn man eine native Options-Liste (`<select>`) ausklappt
- Beim Absenden eines Formulars wird die Seite neu geladen und der Titel (`<title>`) wird automatisch angesagt vom Screenreader

In anderen Fällen muss man spezifisch etwas dafür tun:

- "Expanded" ([🏷️ aria-expanded](/de/tags/aria-expanded)) wenn man ein Dropdown-Menü ([✅ Dropdowns (Aufklapp-Elemente)](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets/dropdowns-aufklapp-elemente)) aufklappt
- "Pressed" ([🏷️ aria-pressed](/de/tags/aria-pressed)) wenn man in einer SPA ([🏷️ Single-Page-App (SPA)](/de/tags/single-page-app-spa)) einen Eintrag im Menü ([🏷️ Navigation (Menü)](/de/tags/navigation-menue)) anwählt
    - Oder den Titel der nun angezeigten Seite mittels Live-Region ([🏷️ ARIA Live Regions](/de/tags/aria-live-regions))
- Wenn man einen Dialog per Klick auf einen Schalter geöffnet hat, wird der Fokus in den Dialog verschoben ([🏷️ Fokus-Management](/de/tags/fokus-management)) und das fokussierte Element wird angesagt

Beachte auch [🏷️ Auf Interaktion folgt stets Rückmeldung!](/de/tags/auf-interaktion-folgt-stets-rueckmeldung)!

## Videos

- [🎬 Bei Aufklappen eines Hamburger-Menüs wird der Fokus nicht in dasselbe gesetzt - Watson](/videos/bei-aufklappen-eines-hamburger-menues-wird-der-fokus-nicht-in-dasselbe-gesetzt-watson)
- [🎬 Bei Auswählen eines Menü-Eintrags erfolgt keine Rückmeldung durch Screenreader - EWB](/videos/bei-auswaehlen-eines-menue-eintrags-erfolgt-keine-rueckmeldung-durch-screenreader-ewb)
- [🎬 Fehlermeldungen werden nicht ausgegeben (Fokus nicht versetzt, nicht verknüpft) - Atupri](/videos/fehlermeldungen-werden-nicht-ausgegeben-fokus-nicht-versetzt-nicht-verknuepft-atupri)