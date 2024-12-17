---
id: "35"
parent_id: "60"
created_at: "2024-03-09 14:54:14"
---

# 🏷️ Single-Page-App (SPA)

## Beschreibung

Eine Webseite, die beim Klicken auf einen Link nicht die komplette Seite neu lädt, sondern nur den Inhaltsbereich ersetzt. Vorteil dabei ist, dass viel weniger Daten geladen werden müssen.

Ein typisches Problem dabei ist aber, dass der Screenreader nach Klicken des Links kein Feedback gibt ([🏷️ Rückmeldung durch Screenreader](/de/tags/techniken/rueckmeldung-durch-screenreader)). Zum Vergleich: bei einer traditionellen Webseite, wo die gesamte Seite neu geladen wird, beginnt der Screenreader nach Neuladen einfach wieder mit dem Vorlesen des `<title>` Attribut. Bei einer SPA wird die Seite eben nicht neu geladen, und deshalb kommt keine automatische Rückmeldung.

Eine solche Rückmeldung mit einer ARIA Live-Region ([🏷️ ARIA Live Regions](/de/tags/techniken/aria-live-regions)) passieren. Manchmal reicht auch die Rückmeldung, dass der Link tatsächlich geklickt wurde und jetzt aktiv ist ([🏷️ aria-pressed](/de/tags/aria-attribute/aria-pressed)).

## Videos

- [🎬 Aktiver Menü-Eintrag wird nicht angesagt - EWB](/videos/aktiver-menue-eintrag-wird-nicht-angesagt-ewb)
- [🎬 Bei Auswählen eines Menü-Eintrags erfolgt keine Rückmeldung durch Screenreader - EWB](/videos/bei-auswaehlen-eines-menue-eintrags-erfolgt-keine-rueckmeldung-durch-screenreader-ewb)