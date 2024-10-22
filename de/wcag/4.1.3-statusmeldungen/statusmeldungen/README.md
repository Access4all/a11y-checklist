---
id: "111"
wcag_criterion_id: "105"
applies_to_pdf: "true"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 14:20:14"
---

# ✅ Statusmeldungen

## Beschreibung

Statusmeldungen sind für assistierende Technologien zugänglich und überstrapazieren den Audiokanal nicht.

## Prüfmethode (in Kürze)

**Screenreader:** Sicherstellen, dass Statusmeldungen sich wie erwartet verhalten.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Seite öffnen
1. Sicherstellen, dass Status-Nachrichten in **🏷️-13 NVDA Screenreader** ausgegeben werden
    - **🙂 Beispiel:** Auf einer Such-Seite werden die Such-Filter angepasst, wodurch die Ergebnisse neu geladen werden (ohne Neuladen der Seite); der Hinweis "15 Such-Resultate gefunden" wird vom Screenreader angesagt.
        - **😡 Beispiel:** Es wird vom Screenreader nichts angesagt.
    - **🙂 Beispiel:** In einem Online-Shop wird ein Artikel in den Warenkorb gelegt, wodurch die Zahl beim Warenkorb-Symbol um 1 hochgezählt wird (ohne Neuladen der Seite); der Screenreader sagt "Artikel hinzugefügt", "4 Artikel im Warenkorb" oder ähnlich.
        - **🙄 Beispiel:** Der Screenreader sagt nur die Zahl an, z.B. "4" → ⚠️ Kann in gewissen Fällen okay sein, aber wir empfehlen normalerweise, hier etwas aussagekräftigere Status-Nachrichten anzubieten
        - **😡 Beispiel:** Es wird vom Screenreader nichts angesagt.
    - **🙂 Beispiel:** Beim Absenden eines Formulars erkennt das System fehlerhafte Eingaben und zeigt eine allgemeine Fehler-Meldung oberhalb des Formulars an (ohne Neuladen der Seite); der Screenreader sagt "Vier fehlerhafte Eingaben", "Bitte korrigieren Sie Vorname, Alter und Email" oder ähnlich.
        - **🙄 Beispiel:** Statt einer allgemeinen Fehler-Meldung wird für jedes fehlerhafte Eingabefeld eine Meldung angesagt, in etwa "Vorname ist Pflichtfeld, Alter muss eine Zahl sein, Email hat falsches Format" → ⚠️ Kann durchaus sinnvoll sein, allerdings wird es bei vielen Eingabefeldern schnell mal zuviel
            - **🙄 Beispiel:** Diese einzelnen Fehler-Meldungen werden nicht beim Abschicken des Formulars angesagt, sondern jeweils einzeln gleich beim Verlassen (`onblur`) eines Eingabefelds (und springen zum nächsten) → ⚠️ Dies ist verwirrend, weil die Fehler-Meldung des vorherigen Eingabefelds zusammen mit dem nachfolgenden Feld ausgegeben wird.
                - **🙄 Beispiel:** Die einzelnen Fehler-Meldungen werden nicht erst beim Verlassen des Eingabefelds ausgegeben, sondern schon während der Eingabe (mit leichter Verzögerung, sodass nicht gleich nach jedem eingegebenen Buchstaben die Status-Nachricht getriggert wird, sondern erst wenn der Nutzer eine kurze Pause macht) → ⚠️ Kann sinnvoll sein, führt aber schnell zur Überstrapazierung des Audiokanals
                    - **😡 Beispiel:** Es gibt keine Verzögerung - man hört vor lauter Fehler-Meldungen kaum noch etwas anderes!
        - **😡 Beispiel:** Es wird vom Screenreader nichts angesagt.
    - **🙂 Beispiel:** Ein eingeloggter Nutzer erhält die Meldung "Sie werden in 2 Minuten ausgeloggt, bitte hier klicken zum Verlängern" (mit einem entsprechenden Schalter); der Hinweis wird vom Screenreader ausgegeben.
        - ⚠️ Hier macht es zudem Sinn, den Tastatur-Fokus direkt auf die Meldung (bzw. den Schalter) zu setzen, damit der Nutzer die Sitzung sofort verlängern kann.
        - **😡 Beispiel:** Es wird vom Screenreader nichts angesagt.
    - **🙂 Beispiel:** Eine Minute vor Ablauf einer Online-Auktion erscheint eine Meldung "Auktion wird in 60 Sekunden beendet"; der Hinweis wird vom Screenreader ausgegeben.
        - ⚠️ Hier macht es keinen Sinn, den Tastatur-Fokus auf die Meldung zu setzen, denn der Nutzer kann hier nichts ändern.
        - **😡 Beispiel:** Es wird vom Screenreader nichts angesagt.

⚠️ Gewisse Status-Nachrichten lassen sich nicht manuell auslösen, was es schwierig macht, sie zu prüfen (z.B. "Ihre Sitzung läuft bald ab"). Hier muss ggf. mit dem Seitenbetreiber geschaut werden, ob solche Status-Nachrichten existieren, und wie man sie testen kann.

## Screenshots typischer Fälle

![Meldung über Speicherung des Dokuments in Word 365](images/meldung-ber-speicherung-des-dokuments-in-word-365.png)