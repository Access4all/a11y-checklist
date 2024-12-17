---
id: "30"
parent_id: "69"
created_at: "2024-03-09 14:38:55"
---

# 🏷️ Dekorative Bilder (leerer Alternativtext)

## Beschreibung

Dekorative Bilder bieten keinerlei informativen Mehrwert. Deshalb sollen sie von Screenreadern als solche erkannt und ignoriert werden können.

Dafür gibt es unterschiedliche Methoden:

```html
<img src="..." alt><!-- alt-Attribut ohne Wert -->
<img src="..." alt=""><!-- alt-Attribut mit leerem Wert -->
<img src="..." aria-hidden="true"><!-- alt-Attribut ohne Wert -->
<img src="..." role="presentation"><!-- Präsentations-Rolle -->
<div style="background-image: url(...)"><!-- CSS -->
<svg><!-- Ist "von Haus aus" dekorativ (benötigt role="img", um als Bild mit informativem Wert zu gelten) -->
```

Falsch hingegen ist folgendes:

```html
<img src="..."><!-- Kein alt-Attribut führt dazu, dass Screenreader "in der Not" den Dateinamen o.ä. vorliest -->
```

Es gilt gut abzuwägen, ob ein Bild tatsächlich **keinerlei** informativen Wert hat. Wenn sich auf der Webseite eines Reisebüros ein Bild von einer Hängematte am Strand befindet, so könnte man argumentieren, dass dies ja nur eine Stimmung hervorrufen soll und entsprechend nur dekorativ ist. Man könnte aber einwenden, dass auch ein Blinder mit Screenreader sich freut, wenn er inspiriert wird von einem Bild mit Alternativtext "Einfach wieder mal in einer Hängematte am Meer die Seele baumeln lassen!". Wieder jemand anderes mag argumentieren, ein möglichst kurzer, rein beschreibender Alternativtext wäre optimal, z.B. "Hängematte am Meer".

Ganz gemäss dem Grundsatz [🏷️ Alle Nutzer haben möglichst dasselbe Erlebnis!](/de/tags/umsetzungs-kodex/alle-nutzer-haben-moeglichst-dasselbe-erlebnis): im Zweifelsfall lieber einen Alternativtext verfassen!

## Videos

- [🎬 Dekoratives Bild ohne Alt-Attribut - EWB Portal](/videos/dekoratives-bild-ohne-alt-attribut-ewb-portal)
- [🎬 Diagramm ohne Alt-Attribut - EWB Portal](/videos/diagramm-ohne-alt-attribut-ewb-portal)