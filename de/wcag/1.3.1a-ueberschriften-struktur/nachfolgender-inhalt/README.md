---
id: "28"
wcag_criterion_id: "84"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 12:25:33"
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

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
