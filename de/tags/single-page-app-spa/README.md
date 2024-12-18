---
id: "35"
parent_id: "60"
created_at: "2024-03-09 14:54:14"
video_ids: "[26, 23]"
---

# 🏷️ Single-Page-App (SPA)

## Beschreibung

Eine Webseite, die beim Klicken auf einen Link nicht die komplette Seite neu lädt, sondern nur den Inhaltsbereich ersetzt. Vorteil dabei ist, dass viel weniger Daten geladen werden müssen.

Ein typisches Problem dabei ist aber, dass der Screenreader nach Klicken des Links kein Feedback gibt ([🏷️ Rückmeldung durch Screenreader](/de/tags/rueckmeldung-durch-screenreader)). Zum Vergleich: bei einer traditionellen Webseite, wo die gesamte Seite neu geladen wird, beginnt der Screenreader nach Neuladen einfach wieder mit dem Vorlesen des `<title>` Attribut. Bei einer SPA wird die Seite eben nicht neu geladen, und deshalb kommt keine automatische Rückmeldung.

Eine solche Rückmeldung mit einer ARIA Live-Region ([🏷️ ARIA Live Regions](/de/tags/aria-live-regions)) passieren. Manchmal reicht auch die Rückmeldung, dass der Link tatsächlich geklickt wurde und jetzt aktiv ist ([🏷️ aria-pressed](/de/tags/aria-pressed)).

## Videos

Keine Videos verfügbar.
