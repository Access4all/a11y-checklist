---
id: "17"
parent_id: "66"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/resize-text.html"
created_at: "2015-08-04 14:36:00"
---

# 1.4.4 Textgrösse ändern - AA

## Verstehen (in Kürze)

**Text-Inhalte** müssen auf bis zu **200% vergrössert** werden können. Dies ermöglicht es Menschen mit Sehbeeinträchtigung, diese erkennen und lesen zu können.

## Verstehen (ausführlich)

Viele Menschen mit Sehbehinderung sind auf die Funktionen des Browsers zur Vergrösserung angewiesen. Damit sie diese nutzen können, muss das Layout und das Schriftbild anpassbar sein.

**Hinweis:** Moderne Browser können Webseiten problemlos skalieren, welche auf solidem, sich responsiv verhaltendem HTML und CSS basieren. Dadurch sollte das vorliegende Erfolgskriterium automatisch erfüllt sein. Wir empfehlen trotzdem, das Skalierverhalten regelmässig zu prüfen, da dieses auch andere Mängel zu Tage fördern kann (etwa Überlappungen, siehe **📜-1.4.10 Automatischer Umbruch (Reflow)**).

**Wichtig:** Auf mobilen Geräten kann die Verwendung von `<meta name="viewport" content="user-scalable=no, maximum-scale=1">` das Zoomen verhindern (oder empfindlich einschränken, je nach verwendeten Werten). Bei mobilen Apps muss zudem darauf geachtet werden, dass die in den Systemeinstellungen gewählte Schriftgrösse übernommen wird (und dies zu keinen Darstellungsproblemen führt).

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass die Inhalte auf bis zu 200% vergrössert werden können.

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#resize-text>
- <https://www.w3.org/WAI/WCAG22/quickref/#resize-text>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G142>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C28>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C12>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C13>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C14>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR34>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G146>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G178>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G179>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-4-textgroesse-aendern/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-4-text-auf-200-vergroesserbar>

### Weiteres
- <https://www.wcag.com/designers/1-4-4-resize-text/>
- <https://www.digitala11y.com/understanding-sc-1-4-4-resize-text/>
- <https://www.boia.org/wcag2/cp/1.4.4>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_144_Resize_text>