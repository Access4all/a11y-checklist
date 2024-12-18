---
id: "70"
wcag_criterion_id: "31"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "false"
created_at: "2024-03-15 13:49:31"
---

# ✅ Dreimaliges Blitzen

WCAG-Kriterium: [📜 2.3.1 Blitzen, dreimalig oder unterhalb Grenzwert - A](..)

## Beschreibung

Es gibt keine Elemente, die öfter als dreimal in einer Sekunde blitzen, oder der Blitz ist unterhalb eines definierten Grenzwerts für Blitze.

## Prüfmethode (in Kürze)

**Photosensitive Epilepsy Analysis Tool (PEAT):** Im Zweifelsfall Screencapture-Video als .avi erstellen und mit Prüftool analysieren.

## Prüfmethode für Web (ausführlich)

### Test-Schritte

1. Seite öffnen
1. Sicherstellen, dass Inhalte nicht öfter als 3x pro Sekunde blitzen
    - **😡 Beispiel:** Der schwarze Hintergrund einer Webseite blitzt mehrfach jede Sekunde (Strobo-Effekt)
        - ⚠️ Selbst wenn das Blitzen deutlich seltener auftritt (und keine lichtempfindliche Anfallsleiden auslöst), raten wir von solchen Effekten ab.
    - **😡 Beispiel:** Ein als Horror-Film aufgemachtes Werbe-Video zeigt eine Szene, in welcher eine nächtliche Szene während einer Sekunde mehrfach vom Leuchten eines Blitzes erhellt wird.

⚠️ Zugegeben, diese Anforderung wurde in unserer jahrelangen Testtätigkeit kaum je verletzt. Im Zweifelsfall sollte aber auf professionelle Tools wie etwa das [Photosensitive Epilepsy Analysis Tool (PEAT)](https://trace.umd.edu/peat/) zurückgegriffen werden.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Kann sowohl in nativen / hybriden Mobile Apps vorkommen, wie auch auf Mobile Webseiten.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht relevant.

## Details zum blinden Testen

Nein.

## Screenshots typischer Fälle

![Darstellung eines stroboskopischen Lichteffekts in einer Diskothek](images/darstellung-eines-stroboskopischen-lichteffekts-in-einer-diskothek.png)