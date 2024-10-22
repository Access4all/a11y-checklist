---
id: "2"
parent_id: "64"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/audio-only-and-video-only-prerecorded.html"
created_at: "2015-08-04 14:35:59"
---

# 📜 1.2.1 Reines Audio und reines Video (aufgezeichnet) - A

## Verstehen (in Kürze)

Für **aufgezeichnete reine Video-Inhalte** (also Video ohne Ton, etwa Stummfilme) **sowie reine Audio-Inhalte** (etwa Radiosendungen) müssen die darin enthaltenen Informationen in einem **alternativen Format** zur Verfügung stehen. Dies ermöglicht seh- bzw. hörbeeinträchtigten Menschen, jene Informationen ebenfalls verarbeiten zu können.

## Verstehen (ausführlich)

Um die in reinen Video- und Audio-Inhalten enthaltenen Informationen in einem alternativen Format zur Verfügung zu stellen, kann eine Textabschrift verfasst werden, welche dieselben vermittelt (wie eine Art Drehbuch). Bei reinem Videoinhalt kann stattdessen auch eine Audiodatei angeboten werden, welche die Inhalte sprachlich vermittelt.

**Hinweis:** Sie brauchen keine Alternative bereitzustellen, wenn das Element selbst bereits eine Zugangsalternative zu existierendem Inhalt darstellt.

Beschreiben Sie so klar wie möglich, was in dem Video bzw. Audio vor sich geht. Konzentrieren Sie sich auf die Aussage des Inhalts. Seien Sie dabei kompakt und nur so detailliert wie nötig.

Platzieren Sie die Textabschrift bzw. Tonspur gleich angrenzend zum Inhalt (oder fügen Sie eine Verlinkung ein).

### Verantwortlichkeiten

- Das Entwicklungsteam schafft die notwendigen technischen Voraussetzungen, etwa ein Feld zum Erfassen (oder Verlinken) einer Textabschrift beim Hochladen eines reinen Video- oder Audio-Inhalts.
- Die Inhaltsverantwortlichen erstellen und warten die entsprechenden Inhalte anforderungsgemäss.
- Auftraggebende sollten sich bewusst sein, dass das Erstellen von zugänglichen Audio- und Videoinhalten einen entsprechenden Zusatzaufwand mit sich bringt.

## Beispiele

- Die visuellen Inhalte eines Videos werden als gesprochene Audiodatei zur Verfügung gestellt.
- Eine Textabschrift der Inhalte mit zusätzlicher Erklärung der sichtbaren oder hörbaren bedeutungsrelevanten Handlung wird im angrenzenden Text oder als verlinktes Dokument zur Verfügung gestellt.

```html
<!-- Audiobeschreibung -->
<a href="metropolis.avi">Metropolis (1927)</a>
<a href="metropolis.mp3">Audiobeschreibung von Metropolis</a>

<!-- Textabschrift (angrenzend) -->
<a href="metropolis.avi">Metropolis (1927)</a>
<p>
Der Stummfilmklassiker Metropolis aus dem Jahre 1927 beginnt mit der Einblendung von...
</p>

<!-- Textabschrift (verlinkt) -->
<a href="metropolis.avi">Metropolis (1927)</a>
<a href="metropolis.html">Textabschrift von Metropolis</a>
```

## ✅ Checkpoints

- [✅ Alternative für Audio-Inhalte](alternative-fuer-audio-inhalte)
- [✅ Alternative für reine Video-Inhalte](alternative-fuer-reine-video-inhalte)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#audio-only-and-video-only-prerecorded>
- <https://www.w3.org/WAI/WCAG22/quickref/#captions-prerecorded>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G158>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G159>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G166>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H96>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-2-1-nur-audio-und-nur-video-aufgezeichnet/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-2-1-alternativen-fuer-audiodateien-und-stumme-videos>

### Weiteres
- <https://www.wuhcag.com/audio-only-video-only-prerecorded/>
- <https://www.digitala11y.com/understanding-sc-1-2-1-audio-only-and-video-only-prerecorded/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-2-time-based-media-level-a/#121_Audio-Only_and_Video-Only_Prerecorded_Explained>