---
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-04-16 08:30:41"
video_ids: "[]"
---

# ✅ Konsistente Hilfe

WCAG-Kriterium: [📜 3.2.6 Konsistente Hilfe - A](..)

## Beschreibung

Hilfestellungen werden über Prozesse und Unter-Seiten hinweg konsistent angeboten.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Prozesse und Unter-Seiten durchsehen und Positionierung der Hilfestellungen beurteilen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Unterseiten durchstöbern und angebotene Prozesse durchlaufen (z.B. Flugticket bestellen)
1. Sicherstellen, dass Hilfsangebote (wenn vorhanden) immer am gleichen Ort gefunden werden können
    - **🙂 Beispiel:** Das Bestellen eines Flugtickets geht über mehrere Schritte hinweg (Destination eingeben, Datum wählen, persönliche Angaben eingeben, Kreditkarte angeben, etc.); ein Link "Hilfe" wird stets im Kopfbereich angezeigt
        - **🙂 Beispiel:** Ein Chat-Dialog wird stets unten rechts eingeblendet
        - **😡 Beispiel:** Bei gewissen Prozessschritten wird man auf andere Seitenbereiche weitergeleitet (z.B. auf der Webseite auf einer Fluggesellschaft befindet man sich zuerst im Buchungsprozess, danach landet man bei zusätzlichen Angeboten wie Hotelbuchung oder Meilenprämien), welche zwar ähnlich aussehen, aber die Hilfe fehlt plötzlich (oder ist woanders platziert) → ⚠️ In der Praxis werden solche voneinander abgegrenzte, aber ähnlich aussehende Inhalte oft von unterschiedlichen Anbietern umgesetzt. Insofern ist hier nicht immer offensichtlich, ob bzw. wann man dieses Erfolgskriterium einfordern kann.
    - **🙂 Beispiel:** Im Fussbereich einer Webseite befindet sich immer ein Link zu einem Kontaktformular oder ein Telefon für Hilfe
        - **😡 Beispiel:** Auf diversen Unterseiten fehlen diese Informationen

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDFs nicht relevant.

## Details zum blinden Testen

Selbst wenn etwas visuell über mehrere Seiten gleich aussieht, kann die Semantik im Hintergrund sehr unterschiedlich sein! Entsprechend ist diese Anforderung für Blinde besonders relevant.

## Screenshots typischer Fälle

![Hilfe-Angebot im Header der Swiss](images/hilfe-angebot-im-header-der-swiss.png)

![Chat-Möglichkeit immer an derselben Position](images/chat-mglichkeit-immer-an-derselben-position.png)

## Videos

Keine Videos verfügbar.
