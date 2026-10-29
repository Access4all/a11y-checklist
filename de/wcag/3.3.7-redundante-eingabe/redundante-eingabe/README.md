---
id: "116"
wcag_criterion_id: "114"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-04-16 08:35:33"
---

# ✅ Redundante Eingabe

WCAG-Kriterium: [📜 3.3.7 Redundante Eingabe - A](..)

## Beschreibung

Persönliche Daten müssen nicht mehrfach eingegeben werden, sondern sind bei mehrmaliger Abfrage z.B. über eine Checkbox oder Liste auswählbar.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Prozesse durchsehen und sicher stellen, dass persönliche Daten nicht mehrfach eingegeben werden müssen.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Angebotene Prozesse durchlaufen (z.B. Buch bestellen)
1. Sicherstellen, dass Daten nicht mehrfach eingegeben werden müssen
    - **🙂 Beispiel:** Nach Eingabe der Lieferadresse bietet ein Onlineshop an, dieselbe auch als Rechnungsadresse zu verwenden
        - **😡 Beispiel:** Die Rechnungsadresse muss erneut manuell eingegeben werden
    - **🙂 Beispiel:** Beim Registrieren eines neuen Nutzers muss das Passwort doppelt eingegeben werden
        - ⚠️ Erlaubte Ausnahme: Aus Gründen der Sicherheit macht das durchaus Sinn
    - **🙂 Beispiel:** Nach Abschicken eines Suchformulars wird das erneut angezeigte Suchfeld wieder mit dem Suchbegriff vor-ausgefüllt

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht relevant.

## Details zum blinden Testen

Ja.

## Screenshots typischer Fälle

![Lieferadresse wird als Rechnungsadresse übernommen (und kann aber natürlich auf Wunsch geändert werden)](images/lieferadresse-wird-als-rechnungsadresse-bernommen.png)

![Option, die Lieferadresse als Rechnungsadresse zu übernehmen](images/option-die-lieferadresse-als-rechnungsadresse-zu-bernehmen.png)
