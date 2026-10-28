---
id: "2"
wcag_criterion_id: "1"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-03-13 16:03:27"
---

# ✅ Titel von Video- und Audio

WCAG-Kriterium: [📜 1.1.1 Nicht-Text-Inhalt - A](..)

## Beschreibung

Video- und Audio-Inhalte weisen einen Alternativtext auf, der den Titel und/oder eine kurze Umschreibung vermittelt.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Alternativtext mit Inhalt vergleichen: Ist der Titel bzw. die Umschreibung passend?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ Title Bookmarklet](/de/tags/title-bookmarklet) ausführen (oder mit [🏷️ DOM Inspektor](/de/tags/dom-inspektor) untersuchen)
1. Sicherstellen, dass eingebettete Videos und Audios passende Alternativtexte aufweisen
    - **🙂 Beispiel:** Ein per `<iframe>` eingebettetes Video hat den Titel "Rückschau Geschäftsausflug 2023 ACME Inc."
        - **🙂 Beispiel:** "Geschäftsausflug 2023" reicht ebenfalls, aber etwas mehr Info kann sinnvoll sein
        - **🙄 Beispiel:** "YouTube Video Player" reicht knapp aus (falls es nur ein einziges Video auf der Seite hat und aus dem Kontext heraus klar ist, worum es sich beim Video handelt)
            - **😡 Beispiel:** Es reicht aber nicht, wenn mehrere Videos vorhanden sind, oder der Kontext nicht klar ist.
        - **😡 Beispiel:** Das Video hat überhaupt keinen Titel

⚠️ Es gibt weitere Möglichkeiten, Multimedia einzubetten, wie etwa `<embed>`, `<audio>` und `<video>`. Dabei ist sinngemäss vorzugehen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht anwendbar.

## Details zum blinden Testen

Teilweise: es kann zwar evaluiert werden, ob ein Video oder Audio einen Titel hat oder nicht - ob dieser aber sinnvoll ist, ist manchmal schwierig zu beurteilen (etwa wenn das Video hauptsächlich aus Bild besteht und kein Sprecher aus dem Off den Inhalt erläutert).

## Screenshots typischer Fälle

![Titel bei YouTube-Video (iFrame) anzeigen](images/titel-bei-youtube-video-iframe-anzeigen.png)
