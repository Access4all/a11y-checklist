---
id: "50"
parent_id: "74"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/on-input.html"
created_at: "2015-08-04 14:36:00"
---

# 3.2.2 Bei Eingabe - A

## Verstehen (in Kürze)

**Interaktion mit einem Element** (etwa das Wählen eines Eintrags aus einer Combobox) alleine darf **keine Änderung von dessen Kontext** bewirken (etwa Neuladen der gesamten Seite). Dies verhindert unvorhersehbares, unbeabsichtigtes Verhalten.

## Verstehen (ausführlich)

Wenn mit einem Element interagiert wird, dann darf dies zu keiner Änderung des Kontexts führen: Dazu gehört das Neuladen der aktuellen Seite (oder das Neuladen, Ersetzen oder Entfernen des Seitenteils, auf welchem sich das fokussierte Element befindet), sowie das Weiterleiten auf eine andere Seite. Solches Verhalten ist oft nicht vorhersehbar, stört den Interaktionsfluss und führt insbesondere bei der Bedienung von assistierender Technologie (etwa Screenreader, aber auch Tastatur, siehe **📜-2.1.1 Tastatur**) zu Verwirrung.

Stellen Sie etwa sicher, dass die Wahl eines Eintrags in einer Combobox (`<select>`) nicht automatisch die Seite neu lädt; lassen Sie die Kontrolle bei den Nutzenden (indem diese z.B. einen Schalter aktivieren müssen). Korrekt programmierter HTML-Code sollte diese Anforderungen bereits erfüllen.

**Hinweis:** Änderungen, welche die Position des Nutzenden auf der Seite nicht betreffen, sind erlaubt. So können etwa durch Auswählen eines Radiobuttons nachfolgende Elemente versteckt, angezeigt, deaktiviert, etc. werden.

**Ausnahme:** Änderungen des Kontexts sind erlaubt, wenn dies zuvor angekündigt wurde (etwa durch einen Text, welcher die Bedienung eines Elements erklärt). Eine solche Ausnahme kann ein `<select>` sein zum Wechseln der Seiten-Sprache. Ansonsten ist dies aber selten sinnvoll und weist eher auf ungenügende Usability hin.

### Verantwortlichkeiten

- Das Entwicklungsteam setzt interaktive Elemente (etwa JavaScripts-Widgets) so um, dass bei Interaktion mit denselben keinerlei Änderung des Kontexts erfolgt (ausser die Interaktion ist eine explizite Aufforderung dazu, etwa das Aktivieren eines Schalters).

## Checkpoints

- [Kontextänderung bei Eingabe](kontextaenderung-bei-eingabe)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#on-input>
- <https://www.w3.org/WAI/WCAG22/quickref/#on-input>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G80>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H32>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G13>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR19>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF15>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/3-2-2-kontextaenderung-bei-eingabe/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-2-2-keine-unerwartete-kontextaenderung-bei-eingabe>

### Weiteres
- <https://wcag.com/developers/3-2-2-on-input/>
- <https://www.wuhcag.com/on-input/>
- <https://www.digitala11y.com/understanding-sc-3-2-2-on-input/>