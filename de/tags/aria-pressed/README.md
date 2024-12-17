---
id: "85"
parent_id: "59"
created_at: "2024-10-28 16:48:07"
---

# 🏷️ aria-pressed

## Beschreibung

Sinngemäss zu einer Checkbox (`<input type="checkbox">`), welche den Zustand "gewählt" oder "nicht gewählt" haben kann, möchte man in gewissen Situationen einen Schalter anbieten, um auf einer Webseite etwas zu verändern (ohne die Seite neu zu laden).

Zum Beispiel eine Art Filter bei Suchergebnissen:

```html
<button aria-pressed="false">Nur aktuelle Ergebnisse anzeigen</button><!-- Beim Aktivieren wird aria-pressed="true" gesetzt -->
```

Dadurch erhält der Screenreader beim Aktivieren ein Feedback "Gedrückt" (bzw. "Nicht gedrückt" beim nochmaligen Aktivieren), ganz gemäss dem Prinzip: [🏷️ Auf Interaktion folgt stets Rückmeldung!](/de/tags/auf-interaktion-folgt-stets-rueckmeldung)