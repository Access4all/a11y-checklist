---
id: "114"
parent_id: "75"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/redundant-entry.html"
created_at: "2023-10-23 11:05:05"
---

# 3.3.7 Redundante Eingabe - A

## Verstehen (in Kürze)

Nutzer sollen **persönliche Daten nicht mehrfach eingeben** müssen. Dies entlastet kognitiv eingeschränkte Menschen.

## Verstehen (ausführlich)

Für einige Menschen ist es schwierig, Informationen im Kurzzeit-Gedächtnis zu speichern. Es kann eine erhebliche kognitive Last darstellen, dieselbe Information an unterschiedlicher Stelle innerhalb eines Prozesses eingeben zu müssen. Etwa wenn in einem Online-Shop für die Liefer- und Rechnungs-Adresse zweimal dieselbe Adresse eingegeben werden muss. Zudem erhöht dies die Fehler-Wahrscheinlichkeit bei der Eingabe.

Zuvor eingegebene Nutzer-Daten müssen also in einem nachfolgenden Prozess-Schritt während derselben Sitzung zur Auswahl verfügbar gemacht werden: etwa durch eine Checkbox "Die Liefer-Adresse als Rechnungs-Adresse verwenden". Dieses Erfolgskriterium gilt auch über unterschiedliche Anbieter innerhalb eines Prozesses hinweg, z.B. wenn beim Checkout in einem Online-Shop zu einem Zahlungs-Anbieter gewechselt wird.

**Hinweis:** Dieses Erfolgskriterium gilt nicht für unterschiedliche Sitzungen; es gilt zudem nicht für die Eingabe von Passwörtern, siehe auch **📜-3.3.8 Barrierefreie Authentifizierung (Minimum)**.

### Ausnahmen

- Wenn die wiederholte Eingabe wesentlich ist für den Zweck der Eingabe, etwa das zweifache Eingeben ein- und desselben Passworts beim Erstellen eines Logins (um Flüchtigkeits-Fehler zu vermeiden), oder die Eingabe einer Antwort bei einem Quiz-Spiel.
- Wenn die zuvor eingegebenen Informationen nicht mehr gültig sind, kann der Benutzer aufgefordert werden, diese Informationen erneut einzugeben.

### Verantwortlichkeiten

- Das Designteam sieht Möglichkeiten vor, dass bereits erfasste persönliche Daten einfach wiederverwendet werden können.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## Beispiele

- Ein Online-Shop bietet zuvor eingegebene Adressen per Ausklapp-Liste zur Auswahl an.
- Die Seite mit Such-Ergebnissen füllt das Such-Feld gleich wieder mit dem zuvor eingegebenen Such-Begriff.

## Checkpoints

- [Redundante Eingabe](redundante-eingabe)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#redundant-entry>
- <https://www.w3.org/WAI/WCAG22/quickref/#redundant-entry>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G221>

## Referenzen (intern)

### Weiteres

- Intopia 3.3.7: <https://youtu.be/jKirEdlHMao>
- <https://www.tpgi.com/how-to-test-3-3-7-redundant-entry/>
- <https://www.wcag.com/developers/success-criterion-3-3-9-redundant-entry-level-a/>
- <https://www.wuhcag.com/redundant-entry/>
- <https://www.digitala11y.com/understanding-wcag-sc-3-3-7-redundant-entry-level-a/>
- <https://www.hellbusch.de/redundante-eingabe/>