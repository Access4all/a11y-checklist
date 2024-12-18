---
id: "35"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/page-titled.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.4.2 Seite mit Titel - A

## Verstehen (in Kürze)

**Jede Seite** benötigt einen **eindeutigen, aussagekräftigen Titel**. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern) die schnelle Identifizierung von Seiten und verbessert die Orientierung beim Navigieren innerhalb eines Webauftritts.

## Verstehen (ausführlich)

Das `<title>`-Element ist das erste, was nach dem Laden einer Seite von assistierenden Technologien (z.B. Screenreader) ausgegeben wird. Deshalb erfordert jede Seite innerhalb eines Webauftritts einen aussagekräftigen, eindeutigen Titel. Wichtig dabei:

- Das Hauptthema der aktuellen Seite ist klar erkennbar; dieser Teil widerspiegelt oft die erste Überschrift im Hauptbereich (`<main>`).
- Der Name des Betreibers ist immer enthalten.

Dabei sollte der sich wiederholende Teil (die Betreiber-Information) an den Schluss gesetzt werden. Zudem sollen die einzelnen Bestandteile des Titels sinnvoll getrennt werden (bspw. mit einem Bindestrich).

**Tipp:** Es bietet sich an, dringende Hinweise (etwa bei Falscheingabe nach Absenden eines Formulars) auch im Seitentitel unterzubringen, damit diese frühzeitig vermittelt werden. Siehe diesbezüglich auch [📜-3.3.1 Fehlerkennzeichnung](/de/wcag/3.3.1-fehlerkennzeichnung).

### Verantwortlichkeiten

- Das Entwicklungsteam schafft die notwendigen technischen Voraussetzungen, etwa ein Feld für das Erfassen des Seitentitels.
- Die Inhaltsverantwortlichen definieren für jede Seite einen treffenden Titel.

## Beispiele

```html
<!-- Titel plus Betreiber -->
<title>Kontaktformular - Bernasconi AG</title>

<!-- Wie oben, aber mit zusätzlichem Hinweis aufgrund von Falscheingaben -->
<title>Warnung: Ungültige Login-Daten! - Kontaktformular - Bernasconi AG</title>

<!-- Betreiber ist im Titel bereits enthalten und muss nicht zusätzlich angehängt werden (typisch für eine Startseite) -->
<title>Willkommen bei der Bernasconi AG!</title>
```

## ✅ Checkpoints

- [✅ Aussagekräftiger Titel](aussagekraeftiger-titel)

## Referenzen (öffentlich)

### WCAG-Varianten

- <https://www.w3.org/TR/WCAG22/#page-titled>
- <https://www.w3.org/WAI/WCAG22/quickref/#page-titled>

### Techniken

- <https://www.w3.org/WAI/WCAG21/Techniques/general/G88.html>

## Referenzen (intern)

### BITV

- <https://www.bit-inklusiv.de/bitv-softwaretest/> → keine spezifischen Infos für dieses EK!
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-2-sinnvolle-dokumenttitel>

### Weiteres

- <https://www.wuhcag.com/page-titled/>
- <https://wcag.com/authors/2-4-2-page-titled/>
- <https://www.digitala11y.com/understanding-sc-2-4-2-page-titled/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/2-4-navigable-level-a/#Success_Criterion_242_Page_Titled>
