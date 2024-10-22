---
id: "91"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/reflow.html"
created_at: "2019-11-10 20:19:46"
---

# 📜 1.4.10 Automatischer Umbruch (Reflow) - AA

## Verstehen (in Kürze)

Inhalt muss sich den **Viewport-Mindestdimensionen** anpassen (sog. **Reflow**). Dies ermöglicht Menschen mit Sehbehinderungen, alle Inhalte auch bei hoher Vergrösserung nutzen zu können, ohne in mehr als eine Richtung scrollen zu müssen.

## Verstehen (ausführlich)

Menschen mit Sehbehinderungen arbeiten häufig mit niedriger Bildschirmauflösung und/oder hohem Zoom-Faktor. Web-Inhalte müssen entsprechend auch unter diesen Umständen korrekt angezeigt werden (ohne Überlappungen oder sonstwie störende Effekte), wobei nur in eine Richtung gescrollt werden darf (entweder horizontal oder vertikal, nicht aber beides). Siehe auch **📜-1.3.4 Ausrichtung**.

Die vorgegebene Mindest-Auflösung hierfür ist `320`x`256` CSS-Pixel. Ein typisches Problem etwa sind zu lange Wörter, welche zu einem Scrollbedarf in mehrere Richtungen führen oder Überlappungen verursachen.

**Ausnahmen:** Einige Medien sind darauf ausgelegt, sowohl in Bezug auf ihre Höhe als auch Breite nicht eingeschränkt zu werden, z.B. Bilder, Karten, Diagramme, Videos, Spiele, Datentabellen und gewisse Webapplikationen. Hier muss eine horizontale Toolbar sichtbar bleiben und es darf entsprechend auch in zwei Richtungen gescrollt werden.

### Verantwortlichkeiten

- Das Designteam definiert die Inhalte so, dass der Reflow berücksichtigt wird.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um und sorgt dafür, dass der Reflow wie vorgeschrieben funktioniert.
- Die Inhaltsverantwortlichen kontrollieren die erstellten Inhalte auf ihre korrekte Darstellung in den Viewport-Mindestdimensionen.

## ✅ Checkpoints

- [✅ Viewport-Mindestdimensionen](viewport-mindestdimensionen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#reflow>
- <https://www.w3.org/WAI/WCAG22/quickref/#reflow>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C32>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C31>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C33>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C38>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR34>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G206>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C34>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C37>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-10-umbruch-der-inhalte-reflow/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-10-inhalte-brechen-um>

### Weiteres
- <https://www.wcag.com/designers/1-4-1-reflow/>
- <https://www.digitala11y.com/understanding-sc-1-4-10-reflow/>
- <https://www.boia.org/wcag2/cp/1.4.10>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1410_Reflow>
- <https://www.tpgi.com/going-with-the-pdf-reflow/>