---
id: "53"
wcag_criterion_id: "15"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-03-15 07:38:05"
---

# ✅ Automatisch abspielender Audio-Inhalt

WCAG-Kriterium: [📜 1.4.2 Audio-Steuerelement - A](..)

## Beschreibung

Automatisch abspielender Audio-Inhalt von mehr als 3 Sekunden wird nach Möglichkeit vermieden. Ist er doch vorhanden, ist er steuerbar (Wiedergabe stoppen, Lautstärke unabhängig von der Systemlautstärke regeln). Die Steuerung befindet sich am Anfang der Seite.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Inhalte durchsehen und auf automatisch abspielenden Audio-Inhalt achten.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Sicherstellen, dass automatisch abspielendes Audio nach 3 Sekunden stoppt oder einfach gestoppt werden kann
    - **🙂 Beispiel:** Auf einer Webseite wird sofort ein Werbe-Video abgespielt; Audio ist standardmässig deaktiviert
        - **🙂 Beispiel:** Das Audio wird nach 3 Sekunden deaktiviert oder deutlich leiser gestellt
        - **🙄 Beispiel:** Das Audio ist aktiviert, kann aber deaktiviert werden über einen einfach erreichbaren Schalter
            - ⚠️ Je nach Intensität des Audioinhalts kann es schwierig bis unmöglich sein, gleichzeitig einen Screenreader zu verstehen und bedienen, deshalb besser komplett auf automatisches Audio verzichten!
        - **😡 Beispiel:** Das Audio ist standardmässig aktiv und kann nicht deaktiviert werden
    - **🙂 Beispiel:** Die Webseite einer Radiosendung startet sofort den Live-Audiostream; dieser kann deaktiviert oder leiser gestellt werden
        - ⚠️ Auch das würden wir nicht empfehlen; da man die Seite einer Radiosendung aber eher bewusst besucht, um Radio zu hören, ist dies ggf. etwas weniger störend, als wenn irgendwo "random" Audioinhalt (z.B. Werbung) abgespielt wird

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDFs nicht relevant.

## Details zum blinden Testen

Ja.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
