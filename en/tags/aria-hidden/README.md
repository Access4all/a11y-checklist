---
id: "20"
parent_id: "59"
created_at: "2024-03-09 12:53:04"
---

# 🏷️ aria-hidden

## Description

Damit kann man Elemente, die visuell sichtbar sind, vor Screenreadern verbergen:

```html
<p>Mich können alle lesen!</p>
<p aria-hidden="true">Mich können Screenreader nicht lesen!</p>
<p hidden>Mich kann niemand lesen</p>
```

Dies soll nur in gut begründeten Ausnahmefällen eingesetzt werden: generell gilt die Maxime, dass alle Nutzenden das gleiche Nutzer-Erlebnis haben sollen (siehe [🏷️ Alle Nutzer haben möglichst dasselbe Erlebnis!](/en/tags/alle-nutzer-haben-moglichst-dasselbe-erlebnis))! Wenn man Inhalte gezielt vor einzelnen Nutzergruppen versteckt, sollte man sich fragen, warum man das tut.

Vorsicht: fokussierbare Elemente sind da per Screenreader immer noch erreichbar (Fokus-Modus, [🏷️ Fokus-Modus](/en/tags/fokus-modus))! Das führt schnell zu problematischem Screenreader-Verhalten:

```html
<p aria-hidden="true">
  Dieser Inhalt ist für Screenreader nicht sichtbar.
  <a href="...">Warum?</a>
</p>
```

Im Fokus-Modus ([🏷️ Fokus-Modus](/en/tags/fokus-modus)) wird der Browser weiterhin den Link "Warum?" fokussieren, aber der Screenreader kann nicht auf dessen Accessibility-Informationen zugreifen und wird etwas Verwirrendes ("Link Leer") oder gar nichts ("Leer") ausgeben. Dies ist seit Jahren so, und man kann debattieren, wer der Übeltäter ist: Eigentlich dürfte der Browser den Link nicht fokussieren, weil er auf `aria-hidden` gesetzt ist. Aber der Browser weiss ggf. selber gar nicht, dass aktuell ein Screenreader läuft!

## Videos

- [🎬 Paragraf aufgeteilt in drei P-Elemente (forcierter Zeilenumbruch) - Atupri](/videos/paragraf-aufgeteilt-in-drei-p-elemente-forcierter-zeilenumbruch-atupri)