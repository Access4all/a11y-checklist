---
id: "98"
wcag_criterion_id: "57"
applies_to_pdf: "false"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-03-15 14:11:33"
---

# ✅ Nutzereingaben überprüfbar

WCAG-Kriterium: [📜 3.3.4 Fehlervermeidung (rechtlich, finanziell, Daten) - AA](..)

## Beschreibung

Nutzereingaben müssen überprüfbar sein vor Prozess-Abschluss mit finanziellen/rechtlichen Folgen. Es ist sichergestellt, dass die Gelegenheit besteht, eingegebenen Daten zu überprüfen und gegebenenfalls zu korrigieren, bevor ein endgültiger Abschluss erfolgt.

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Prozesse durchlaufen und darauf achten, dass vor Abschluss eine Zusammenfassung der Daten (mit Möglichkeit zur Korrektur) angezeigt wird.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite mit Prozess (z.B. Checkout in Onlineshop) öffnen
1. Prozess durchlaufen
1. Sicherstellen, dass vor definitivem Abschicken der Bestellung eine Zusammenfassung aller relevanten Daten angezeigt wird
    - **🙂 Beispiel:** In einem Onlineshop wird vor Prozessabschluss eine Liste aller zu bestellenden Artikel angezeigt, sowie Infos über die Liefer- und Rechnungsadresse, etc.; die Angaben können nun bei Bedarf nochmal geändert werden und erst durch Betätigen eines "Jetzt bestellen!"-Schalters wird die Bestellung final ausgelöst.
        - **😡 Beispiel:** Es wird keine Zusammenfassung angezeigt, oder die Zusammenfassung listet nicht alle relevanten Informationen auf.

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowohl auf Web-Views als auch native Inhalte 1:1 übertragbar.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht anwendbar, da PDFs in der Regel nicht direkt übermittelt werden.

## Details zum blinden Testen

Ja.

## Screenshots typischer Fälle

![Eine Übersichts-Seite in einem Online-Shop zeigt alle relevanten Infos nochmal an, bevor die Bestellung definitiv abgeschickt wird](images/eine-bersichts-seite-in-einem-online-shop-zeigt-alle-relevanten-infos-nochmal-an-bevor-die-bestellung-definitiv-abgeschickt-wird.png)