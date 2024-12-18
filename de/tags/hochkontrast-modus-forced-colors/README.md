---
id: "36"
parent_id: "60"
created_at: "2024-03-09 14:56:12"
video_ids: "[27]"
---

# 🏷️ Hochkontrast-Modus (Forced-Colors)

## Beschreibung

Der Hochkontrast-Modus aktiviert eine spezifische Farbpalette für das gesamte System, inkl. Webseiten. Dadurch verlieren alle in CSS definierten Farben ihre Gültigkeit und werden durch die Hochkontrast-Farbpalette überschrieben. Zudem werden rein dekorative CSS-Angaben entfernt, z.B. `background` (weshalb auch per CSS eingebundene Bilder nicht mehr angezeigt werden), `box-shadow`, etc.

Wichtig ist, dass trotz dieser sehr reduzierten Anzeige-Modalitäten die Webseite weiterhin problemlos bedienbar ist.

Getestet wird typischerweise mit Windows High Contrast Mode (HCM): `Alt` + `Shift + `PrtScn` oder in den Systemeinstellungen unter "Barrierefreiheit" → "Kontrast-Designs" anwählen.

Man kann aber auch ["Forced-Colors" aktivieren in Chrome](https://developer.chrome.com/docs/devtools/rendering/emulate-css?hl=de#emulate_css_media_feature_forced-colors).

⚠️ Hinweis: Die Funktion "Farben invertieren" auf Mobile hat ist ein gänzlich anderer Effekt als "Forced Colors"!

## Videos

- [🎬 Aktiver Menü-Eintrag bei Hochkontrast nicht mehr erkennbar - EWB (🚨💻)](/de/videos/aktiver-menue-eintrag-bei-hochkontrast-nicht-mehr-erkennbar-ewb)
