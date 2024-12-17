---
id: "4"
parent_id: "70"
created_at: "2024-03-09 10:46:54"
---

# 🏷️ Inhalte rein visuell verstecken

## Description

Manchmal möchte man Inhalte rein visuell verstecken, sodass sie am Bildschirm nicht zu sehen sind, aber von Screenreadern dennoch erreicht und vorgelesen werden. Typisch dafür sind visuell versteckte Überschriften ([🏷️ Visuell versteckte Überschriften](/en/tags/visuell-versteckte-uberschriften)), um z.B. einen visuell klar erkennbaren Bereich auch für Screenreader erkennbar zu machen (indem man etwa den Fussbereich mit einer visuell versteckten Überschrift "Fussbereich" einleitet).

Der Einsatz von `display: none` o.ä. ([🏷️ Inhalte komplett verstecken (display: none)](/en/tags/inhalte-komplett-verstecken-display-none)) wäre hier fehl am Platz, weil Elemente dadurch auch aus dem Accessibility-Tree ([🏷️ Accessibility Tree](/en/tags/accessibility-tree)) entfernt werden und Screenreader nicht mehr darauf zugreifen können. Leider gibt es aber nach wie vor keine "offizielle" Lösung für dieses Problem. Es wird deshalb seit jeher eine Art "Hack" verwendet, indem der Inhalt aus dem Viewport hinaus geschoben wird:

- [WebAIM: Invisible Content Just for Screen Reader Users](https://webaim.org/techniques/css/invisiblecontent/)
- [CSS-Tricks: Inclusively Hidden](https://css-tricks.com/inclusively-hidden/)

## Videos

- [🎬 Fehlende Zwischen-Überschrift und Ebenen-Sprung - Mozilla](/videos/fehlende-zwischen-uberschrift-und-ebenen-sprung-mozilla)
- [🎬 Schalter ohne Namen - EWB](/videos/schalter-ohne-namen-ewb)
- [🎬 Unvollständige Überschriften (kein H1, falsch umgesetzt, etc.) - Brack](/videos/unvollstandige-uberschriften-kein-h1-falsch-umgesetzt-etc-brack)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - MySwitzerland](/videos/vorbildliche-uberschriften-inkl-versteckte-myswitzerland)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - WOZ](/videos/vorbildliche-uberschriften-inkl-versteckte-woz)