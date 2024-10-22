---
id: "12"
parent_id: "65"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/meaningful-sequence.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 1.3.2 Bedeutungsvolle Reihenfolge - A

## Verstehen (in Kürze)

Alle **Inhalte** müssen im Dokument (DOM) **in sinnvoller Reihenfolge** angeordnet sein (unabhängig von CSS). Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), die visuell zweidimensional angeordneten Inhalte korrekt aneinander zu hängen (linearisieren) und eindimensional als Text auszugeben.

## Verstehen (ausführlich)

Sehende nehmen eine Webseite als zweidimensionalen, grafischen Bereich wahr. Blinde hingegen nehmen mittels Screenreader eine Seite eindimensional (linear) und rein textuell wahr: ein Element nach dem anderen wird vorgelesen, von oben nach unten. Die Reihenfolge der Elemente im DOM muss deshalb sinnvoll sein, unabhängig davon, wie die visuelle Anordnung mittels CSS nachträglich verändert wird.

Wird etwa das Foto einer News-Meldung visuell vor deren Überschrift platziert, so muss im DOM trotzdem die Überschrift an erster Stelle stehen. Mittels CSS (z.B. Flexbox oder Grid) kann die Anordnung dann visuell beliebig verändert werden.

**Wichtig:** Generell sollte das visuelle Erscheinungsbild nur in gut begründeten Fällen von der Reihenfolge im DOM abweichen. Beispielsweise ist es ungünstig, in einem Formular unterhalb des Abschicken-Schalters noch weitere relevante Informationen anzuzeigen: diese wird visuell leicht übersehen, insbesondere aber Screenreader-Nutzende werden sie im Normalfall nicht finden, da sie beim Antreffen des Abschicken-Schalters diesen aktivieren (und nicht darunter nach weiterer Information suchen). Zudem kann durch so etwas auch die intuitive Fokus-Führung bei Tastatur-Nutzung beeinträchtigt werden (siehe dazu **📜-2.1.1 Tastatur** und **📜-2.4.3 Fokus-Reihenfolge**).

### Verantwortlichkeiten

- Das Designteam muss sich bewusst sein, dass komplizierte Anordnungen von Inhalten ggf. schwierig technisch umzusetzen sind.
- Das Entwicklungsteam setzt die Seitenbereiche und Inhalte im DOM in sinnvoller Reihenfolge aneinander, unabhängig von deren visueller Anordnung.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass die DOM-Reihenfolge **an sich sinnvoll** ist.
- Dass eine **manuelle Übersteuerung** der DOM-Reihenfolge für die Fokus-Reihenfolge sinnvoll passiert, wird von **📜-2.4.3 Fokus-Reihenfolge** gefordert.

## Beispiele

```html
<style>
  article {
    display: flex;
    flex-direction: column;
  }

  h2 {
    order: 2;
  }

  img {
    order: 1;
  }

  p {
     order: 3;
  }
</style>

<article>
  <h2>Wahlresultate bekannt</h2><!-- Überschrift kommt zuoberst im DOM -->
  <img src="wahlurne.jpg" alt="Ein Mann gibt seine Stimme an einer Wahlurne ab" /><!-- Visuell befindet sich aber das Bild zuoberst -->

  <p>Heute morgen wurden die Resultate der aktuellen Wahlen veröffentlicht.</p>
</article>
```

## ✅ Checkpoints

- [✅ Korrekte Reihenfolge](korrekte-reihenfolge)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#meaningful-sequence>
- <https://www.w3.org/WAI/WCAG22/quickref/#meaningful-sequence>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G57>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C27>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF3>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G57>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H34>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H56>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C6>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-2-sinnvolle-reihenfolge/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-2-sinnvolle-reihenfolge>

### Weiteres

- <https://adrianroselli.com/2015/09/source-order-matters.html>
- <https://adrianroselli.com/2015/10/html-source-order-vs-css-display-order.html>
- <https://adrianroselli.com/2019/04/reading-order-bookmarklet.html>
- <https://www.wcag.com/developers/1-3-2-meaningful-sequence/>
- <https://www.wuhcag.com/meaningful-sequence/>
- <https://www.digitala11y.com/understanding-sc-1-3-2-meaningful-sequence/>
- <https://www.boia.org/wcag2/cp/1.3.2>