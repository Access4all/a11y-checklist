---
id: "16"
wcag_criterion_id: "2"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "false"
created_at: "2024-03-13 17:04:08"
---

# ✅ Alternative für reine Video-Inhalte

WCAG-Kriterium: [📜 1.2.1 Reines Audio und reines Video (aufgezeichnet) - A](..)

## Beschreibung

Für aufgezeichnete reine Video-Inhalte (z.B. Stummfilme) existieren Textabschriften oder gleichwertige Alternativen als Audio-Inhalt.

Ausnahme: Wenn der reine Video-Inhalt bereits eine Alternative für bestehenden Text (und als solche deutlich gekennzeichnet) ist.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:**  Textabschrift mit Video-Inhalt vergleichen: Sind die Inhalte gleichwertig?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Video-Inhalt ohne Audio starten
1. Sicherstellen, dass Medien-Alternative besteht:
    - **🙂 Beispiel:** Eine Text-Abschrift oder Audio-Beschreibung ist gut erkennbar unter dem Video verlinkt
    - **🙄 Beispiel:** Eine Text-Abschrift ist verlinkt, aber schlecht erkennbar → z.B. "Mehr Infos zu..." ist weniger eindeutig als "Text-Abschrift zu..." oder "Medien-Alternative zu..."
    - **😡 Beispiel:** Keine Medien-Alternative verfügbar
1. Sicherstellen, dass die Medien-Alternative den Erwartungen entspricht:
    - ⚠️ Die Medien-Alternative muss nicht 1:1 dem Gezeigten entsprechen, es darf aber keine wichtige Information entfallen.
    - Alle relevanten Infos vorhanden?
        - ⚠️ Sowohl Bild- als auch Text-Inhalte!

## Prüfmethode für Mobile (Ergänzungen zu Web)

Audio-Inhalte gibt's sowohl in hybriden wie auch in nativen Apps.

## Prüfmethode für PDF (Ergänzungen zu Web)

Grundsätzlich ist es möglich, in PDFs Multimedia-Inhalte wie Audio und Videos einzubetten. Solche Dokumente sind in der Praxis eher selten anzutreffen und bringen andere Accessibility-Probleme mit sich, da die Videos je nach Screenreader, PDF-Programm und Betriebssystem nicht abspielbar sind.

## Details zum blinden Testen

Nein.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
