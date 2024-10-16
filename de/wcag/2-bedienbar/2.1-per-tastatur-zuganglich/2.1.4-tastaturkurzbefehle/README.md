---
id: "95"
parent_id: "68"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/character-key-shortcuts.html"
created_at: "2019-11-10 20:22:06"
---

# 2.1.4 Tastaturkurzbefehle - A

## Verstehen (in Kürze)

**Tastaturkurzbefehle** dürfen **nicht über Einzeltasten** (z.B. `s`, `/`, `?`) aktiviert werden, oder sie müssen veränderbar oder deaktivierbar sein. Dies verhindert, dass fälschlicherweise Tastaturkurzbefehle ausgelöst werden, z.B. durch Spracheingabe.

## Verstehen (ausführlich)

Tastaturkurzbefehle mit nur einer einzelnen Taste sind häufig problematisch für Menschen, die mit Spracheingabe (Voice Input) arbeiten. Spracheingaben können dann unerwartet Befehle für Funktionen auslösen. Wenn Websites Tastaturkurzbefehle über Einzeltasten (Buchstaben, Zahlen, Satzzeichen oder Symbole) implementieren, ist es deshalb essenziell, dass diese entweder deaktiviert oder auf eine Tastenkombination mit Modifikator-Taste(n) umgestellt werden können (z.B. `Ctrl`, `Alt`), oder dass sie für bestimmte Schnittstellen-Elemente nur aktiv sind, wenn diese den Fokus haben.

Typische Anwendungsfälle sind etwa wenn beim Drücken von `S` oder `/` das Suchfeld automatisch den Fokus erhält, oder wenn beim Drücken von `?` eine Hilfe angezeigt wird.

Einzeltasten-Kurzbefehle können auch Menschen mit motorischen Behinderungen vor Probleme stellen, insbesondere wenn deren Hände betroffen sind. Es können aus Versehen Tasten gedrückt und damit unbeabsichtigt Aktionen ausgelöst werden. Der Nutzungskontext geht dadurch verloren ("Wo bin ich? Was ist gerade passiert? Warum?").

**Wichtig:** Dieses Erfolgskriterium hat keine Auswirkungen auf die Tastatur-Bedienbarkeit von nativen HTML-Elementen (z.B. werden `<select>`s natürlich weiterhin durch einzelne Tasten bedient), siehe 📜-2.1.1. Durch das `accesskey`-Attribut implementierte Tastaturkürzel sind ebenfalls nicht betroffen.

### Verantwortlichkeiten

- Das Designteam definiert einen Mechanismus, mit dem die Tastaturbefehle über Einzeltasten deaktiviert werden können (z.B. Umschalten-Schalter, welcher Einzeltasten-Befehle aktiviert/deaktiviert), oder die Möglichkeit, dass Einzeltasten-Befehle auf Modifikator-Taste(n) umgestellt werden können.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## Beispiele

Eine Webseite bietet das Tastenkürzel `S` an, um direkt in ein Suchfeld zu springen. In den Benutzer-Einstellungen kann dieses Tastenkürzel deaktiviert oder geändert werden.