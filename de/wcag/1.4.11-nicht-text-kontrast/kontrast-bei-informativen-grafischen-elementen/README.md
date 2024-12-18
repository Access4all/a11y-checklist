---
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "false"
created_at: "2024-03-15 07:46:12"
video_ids: "[]"
---

# ✅ Kontrast bei informativen grafischen Elementen

WCAG-Kriterium: [📜 1.4.11 Nicht-Text Kontrast - AA](..)

## Beschreibung

Das Kontrastverhältnis bei informativen grafischen Elementen (z.B. Linien und Kurven in Diagrammen) zu den umgebenden Farben beträgt mindestens `3:1`. Das gilt für alle visuellen Hinweise, die für die Wahrnehmung und Bedienung erforderlich sind.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Inhalte durchsehen und auf schwache Kontraste achten. Kontrastermittlung ggf. durch Colour Contrast Analyser.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Sicherstellen, dass Bedeutungs-tragende grafische Elemente genug Kontrast aufweisen
    - **🙂 Beispiel:** Die Kuchenstücke eines Diagramms sind mit kontraststarken (mind. `3:1`) Linien umrandet
        - **😡 Beispiel:** Die Umrandung ist kontrastarm (kleiner als `3:1`)
        - **😡 Beispiel:** Es gibt gar keine Umrandung

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Prüfschritte analog zu Web-Inhalten.

## Details zum blinden Testen

Nein.

## Screenshots typischer Fälle

### Statistisches Diagramm

![Kontrastarmes Diagramm](images/kontrastarmes-diagramm.png)

![Besser erkennbares Diagramm](images/besser-erkennbares-diagramm.png)

![Zusätzliche Punkte bei Diagramm](images/zustzliche-punkte-bei-diagramm.png)

![Zusätzliche horizontale Linien bei Diagramm](images/zustzliche-horizontale-linien-bei-diagramm.png)

![Zusätzliche Zahlenwerte bei Diagramm](images/zustzliche-zahlenwerte-bei-diagramm.png)

### Kuchendiagramm

![Kontrastarmes Kuchendiagramm](images/kontrastarmes-kuchendiagramm.png)

![Gut erkennbares Kuchendiagramm](images/gut-erkennbares-kuchendiagramm.png)

## Videos

Keine Videos verfügbar.
