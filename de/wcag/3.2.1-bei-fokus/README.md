---
id: "49"
parent_id: "74"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/on-focus.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.2.1 Bei Fokus - A

## Verstehen (in Kürze)

**Fokussieren eines Elements** alleine darf **keine Änderung von dessen Kontext** bewirken (etwa Neuladen der gesamten Seite). Dies verhindert unvorhersehbares, unbeabsichtigtes Verhalten.

## Verstehen (ausführlich)

Wenn ein Bestandteil der Seite den Fokus erhält, dann darf dies zu keiner Änderung des Kontexts führen: dazu gehört das Neuladen der aktuellen Seite (oder das Neuladen, Ersetzen oder Entfernen des Seitenteils, auf welchem sich das fokussierte Element befindet), sowie das Weiterleiten auf eine andere Seite. Solches Verhalten ist oft nicht vorhersehbar, stört den Interaktionsfluss und führt insbesondere bei der Bedienung von assistierender Technologie (etwa Screenreader, aber auch Tastatur, siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)) zu Verwirrung.

Stellen Sie etwa sicher, dass bei Fokus weder Links oder Schalter aktiviert noch Formulare abgeschickt werden; lassen Sie die Kontrolle bei den Nutzenden (indem diese z.B. einen Schalter aktivieren müssen). Korrekt programmierter HTML-Code sollte diese Anforderungen bereits erfüllen.

**Hinweis:** Änderungen, welche die Position des Nutzenden auf der Seite nicht betreffen, sind erlaubt. Dazu gehört etwa das Anzeigen eines Tooltips beim Fokussieren eines Links oder das automatische Öffnen eines Untermenüs.

### Verantwortlichkeiten

- Das Entwicklungsteam setzt fokussierbare Elemente (etwa JavaScripts-Widgets) so um, dass bei deren Fokus keinerlei Änderung des Kontexts erfolgt.

## ✅ Checkpoints

- [✅ Kontextänderung bei Fokus](kontextaenderung-bei-fokus)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#on-focus>
- <https://www.w3.org/WAI/WCAG22/quickref/#on-focus>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G107>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G200>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G201>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-2-kontextaenderung-bei-fokus/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-2-1-keine-unerwartete-kontextaenderung-bei-fokus>

### Weiteres
- <https://wcag.com/designers/3-2-1-on-focus/>
- <https://www.wuhcag.com/on-focus/>
- <https://www.digitala11y.com/understanding-sc-3-2-1-on-focus/>
