---
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-13 17:04:08"
video_ids: "[]"
---

# ✅ Alternative für Audio-Inhalte

WCAG-Kriterium: [📜 1.2.1 Reines Audio und reines Video (aufgezeichnet) - A](..)

## Beschreibung

Für aufgezeichnete reine Audio-Inhalte (z.B. Radiosendungen) existieren Textabschriften.

Ausnahme: Wenn der reine Audio-Inhalt bereits eine Alternative für bestehenden Text (und als solche deutlich gekennzeichnet) ist.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Textabschrift mit Audio-Inhalt vergleichen: Sind die Inhalte gleichwertig?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Audio-Inhalt starten
1. Sicherstellen, dass Medien-Alternative besteht:
    - **🙂 Beispiel:** Eine Text-Abschrift ist gut erkennbar unter dem Video verlinkt
    - **🙄 Beispiel:** Eine Text-Abschrift ist verlinkt, aber schlecht erkennbar → z.B. "Mehr Infos zu..." ist weniger eindeutig als "Text-Abschrift zu..." oder "Medien-Alternative zu..."
    - **😡 Beispiel:** Keine Medien-Alternative verfügbar
1. Sicherstellen, dass die Medien-Alternative den Erwartungen entspricht:
    - ⚠️ Die Medien-Alternative muss nicht 1:1 dem Gezeigten entsprechen, es darf aber keine wichtige Information entfallen.
    - Alle relevanten Infos vorhanden?
    - Bedeutung-tragende Töne ebenfalls?
        - **🙂 Beispiel:** Besetzt-Zeichen bei Telefon-Anruf
        - **🙂 Beispiel:** Hinweis auf entspannte Hintergrund-Musik
        - **😡 Beispiel:** Der Hinweis auf eine Sirene im Hintergrund fehlt, welche das Herannahen der Polizei ankündigt.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Video-Inhalte gibt's sowohl in hybriden wie auch in nativen Apps.

## Prüfmethode für PDF (Ergänzungen zu Web)

Grundsätzlich ist es möglich, in PDFs Multimedia-Inhalte wie Audio und Videos einzubetten. Solche Dokumente sind in der Praxis eher selten anzutreffen und bringen andere Accessibility-Probleme mit sich, da die Videos je nach Screenreader, PDF-Programm und Betriebssystem nicht abspielbar sind.

## Details zum blinden Testen

Audio- wie auch Text-Inhalte können problemlos blind konsumiert und miteinander verglichen werden.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.

## Videos

Keine Videos verfügbar.
