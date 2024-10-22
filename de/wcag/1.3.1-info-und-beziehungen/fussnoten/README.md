---
id: "24"
wcag_criterion_id: "11"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-14 12:21:16"
---

# Prüfpunkt: Fussnoten

## Beschreibung

Fussnoten sind barrierefrei umgesetzt: Auch mit einem Screenreader ist beim Fussnoten-Zeichen der Zugriff auf den Fussnotentext gegeben, ohne dass der ursprüngliche Kontext verloren geht.

## Prüfmethode (in Kürze)

**Screenreader:** Elemente erkunden, mit ihnen interagieren und Ausgaben prüfen: Sind verbundene Informationen einfach auffindbar? Gelingt etwaige Navigation zwischen Text und Fussnote?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Mit **🏷️-13 NVDA Screenreader** Fussnoten lesen und bedienen
1. Sicherstellen, dass Fussnoten funktionieren und man den Kontext nicht verliert
    - **🙂 Beispiel:** Eine Fussnote zum Begriff "Ländlermusik" wird als "Fussnote 1: Ländlermusik" angesagt: sie ist ein in-Page-Link und beim Aktivieren springt man zur Definition; dort hat es wiederum einen in-Page-Link zurück nach oben zur "Fussnote 1".
        - **🙄 Beispiel:** Die Fussnote wird als "Fussnote 1" angesagt; dies ist zwar ausreichend, aber z.B. ohne Kontext (z.B. in einer Link-Liste) ist es wenig aussagekräftig
        - **😡 Beispiel:** Die Fussnote wird als "1" angesagt und ist nicht verlinkt
        - **🙄 Beispiel:** Die Fussnote ist zur Definition hin verlinkt, aber nicht mehr zurück → über die "Zurück"-Funktion des Browsers kann ggf. wieder an die ursprüngliche Stelle gesprungen werden, aber z.B. innerhalb eines Formulars ist man eher vorsichtig, diese Funktion zu nutzen (um nicht versehentlich Eingaben wieder zu löschen)

## Screenshots typischer Fälle

![Fussnoten sind in-Page Anker-Links...](images/fussnoten-sind-in-page-anker-links.png)

![...und verlinken zurück!](images/und-verlinken-zurck.png)