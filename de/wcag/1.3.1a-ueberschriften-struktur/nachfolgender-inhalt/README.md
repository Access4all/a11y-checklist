---
id: "28"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-14 12:25:33"
video_ids: "[28, 29]"
---

# ✅ Nachfolgender Inhalt

WCAG-Kriterium: [📜 1.3.1a Überschriften-Struktur](..)

## Beschreibung

Überschriften weisen nachfolgenden Inhalt (bzw. darunter liegende Überschriften) auf.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen: Hat jede Überschrift einen nachfolgenden Inhalt?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. [🏷️ H123 Bookmarklet](/de/tags/h123-bookmarklet) ausführen
1. Sicherstellen, dass alle Überschriften einen nachfolgenden Inhalt haben:
    - ⚠️ Inhalt kann fast alles sein: Paragraf, Link, Sub-Überschrift, Bild (ausser wenn bloss dekorativ, siehe [✅ Dekorative Grafiken](/de/wcag/1.1.1-nicht-text-inhalt/dekorative-grafiken)), Formular-Felder, etc. → Hauptsache, ein Screenreader gibt etwas aus!
    - **🙂 Beispiel:** In der Navigation nach `<h2>Navigation</h2>` folgt eine Liste mit Links zu Unterseiten.
    - **🙂 Beispiel:** Im Haupt-Inhalt nach `<h1>Meine Hobbys</h1>` folgen Paragrafen und Bilder, Sub-Überschriften (`<h2>`), Links etc. zum Thema Hobbys.
    - **🙂 Beispiel:** In einer Auflistung von Cards ([✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}) verfügen die einzelnen Cards nach der Überschrift auch über z.B. einen Paragrafen und ein Bild.
    - **😡 Beispiel:** Cards ([✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}) verfügen nur über eine Überschrift und ein dekoratives Bild.

### Nachprüfen mit Screenreader

Bei zweifelhaftem Code (z.B. Einsatz von `role="heading"`) sollte besser mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) nachgeprüft werden:

- Überschriften mit `H` anspringen und sicherstellen, dass nachfolgender Inhalt vorhanden.

⚠️ Denn: viele Fehler findet man oft auch ohne Screenreader, z.B. wenn die Semantik komplett fehlt oder offensichtlich falsch ist. Wenn Semantik aber grundsätzlich **vorhanden scheint**, lässt sich deren Korrektheit und Sinnhaftigkeit oft nur mit Screenreader final beurteilen.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar; zum Prüfen mittels Überschriften-Navigation (im [🏷️ Rotor](/de/tags/rotor) aktivieren) zu Überschriften springen und dann mit Wisch-Bewegung zum nächsten Element navigieren.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Mit [🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) vorlesen lassen und/oder
1. Mit [🏷️ PDF Accessibility Checker (PAC)](/de/tags/pdf-accessibility-checker-pac) testen und Screenreader-Vorschau öffnen und/oder
1. Mit [🏷️ Adobe Acrobat](/de/tags/adobe-acrobat) (falls vorhanden) öffnen und Tag-Baum untersuchen
1. Analog zu Web: Prüfen, ob Überschriften einen nachfolgenden Inhalt haben

## Details zum blinden Testen

Überschriften sind für Blinde besonders wichtig!

## Screenshots typischer Fälle

Keine Screenshots verfügbar.

## Videos

- [🎬 Vorbildliche Überschriften (inkl. versteckte) - MySwitzerland](/de/videos/vorbildliche-ueberschriften-inkl-versteckte-myswitzerland)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - WOZ](/de/videos/vorbildliche-ueberschriften-inkl-versteckte-woz)
