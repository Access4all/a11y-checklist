---
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "true"
blind_testable: "false"
created_at: "2024-03-14 12:14:33"
video_ids: "[]"
---

# ✅ Untertitel

WCAG-Kriterium: [📜 1.2.2 Untertitel (aufgezeichnet) - A](..)

## Beschreibung

Für aufgezeichnete Video-Inhalte mit Audio (z.B. Spielfilme) existieren gleichwertige, synchrone Untertitel.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Untertitel mit Gesprochenem vergleichen: Sind die Inhalte gleichwertig?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Video-Inhalt mit Audio starten
1. Sicherstellen, dass Untertitel verfügbar:
    - **🙂 Beispiel:** Untertitel sind "eingebrannt" in Video (Open Caption)
    - **🙂 Beispiel:** Untertitel sind ein-/ausschaltbar (Closed Caption)
    - **😡 Beispiel:** Keine Untertitel verfügbar
1. Sicherstellen, dass Untertitel den Erwartungen entsprechen:
    - ⚠️ Die Untertitelung muss nicht 1:1 dem Gesprochenen entsprechen, es darf aber keine wichtige Information entfallen.
    - Alle relevanten Infos vorhanden?
    - Bedeutung-tragende Töne ebenfalls?
        - **🙂 Beispiel:** Besetzt-Zeichen bei Telefon-Anruf
        - **🙂 Beispiel:** Hinweis auf entspannte Hintergrund-Musik → insb. wenn ansonsten nichts gesagt wird
        - **😡 Beispiel:** Der Hinweis auf eine Sirene im Hintergrund fehlt, welche das Herannahen der Polizei ankündigt.
    - Synchron mit Gesprochenem?
    - Keine Rechtschreib- oder Übersetzungs-Fehler?
        - ⚠️ Insb. bei automatischer Übersetzung!
        - **😡 Beispiel:** "You have all the fun" wird automatisiert übersetzt zu "You have all the fine"

## Prüfmethode für Mobile (Ergänzungen zu Web)

Video-Inhalte gibt's sowohl in hybriden wie auch in nativen Apps.

## Prüfmethode für PDF (Ergänzungen zu Web)

Grundsätzlich ist es möglich, in PDFs Multimedia-Inhalte wie Audio und Videos einzubetten. Solche Dokumente sind in der Praxis eher selten anzutreffen und bringen andere Accessibility-Probleme mit sich, da die Videos je nach Screenreader, PDF-Programm und Betriebssystem nicht abspielbar sind.

Bei PDFs können nur Open Captions und keine Closed Captions eingesetzt werden.

## Details zum blinden Testen

Prinzipiell könnte eine Untertitel-Datei zwar via Screenreader gelesen und ihr Inhalt mit dem Gehörten verglichen werden, aber das ist wenig praktikabel (und die Synchronität kann dabei ebenfalls kaum sicher gestellt werden).

## Screenshots typischer Fälle

### YouTube

![Automatisch erstellte Untertitel in YouTube](images/automatisch-erstellte-untertitel-in-youtube.png)

YouTube erstellt Untertitel automatisch. Sie können manuell ein-/ausgeblendet werden (Closed Captions).

### SwissID

![Keine zusätzliche Untertitelung nötig bei SwissID](images/keine-zustzliche-untertitelung-ntig-bei-swissid.png)

Das Video von SwissID benötigt keine spezifische Untertitelung, da alle Texte schon im Video selber angezeigt werden.

### Netflix

![Cabinet of Curiosities](images/cabinet-of-curiosities.png)

Ein Horrorfilm lebt stark von teils sehr subtilen Audio-Effekten, ohne dass man deren Ursprung sieht (etwa "laufende Schritte im Flur", während die Kamera auf eine Person im Bett gerichtet ist).

## Videos

Keine Videos verfügbar.
