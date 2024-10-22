---
id: "112"
parent_id: "98"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum.html"
created_at: "2023-10-23 11:02:02"
---

# 📜 2.5.8 Zielgrösse (Minimum) - AA

## Verstehen (in Kürze)

**Aktivierbare Elemente** müssen eine **Mindestgrösse** aufweisen **oder ausreichend Abstand** voneinander haben. Dies erleichtert deren Bedienung mit einem Zeigegerät (etwa Maus oder Touchscreen).

## Verstehen (ausführlich)

Benutzer mit eingeschränkter Feinmotorik haben Probleme, kleine Ziele zu treffen. Ausreichende Grösse bzw. genug Abstand zwischen den Elementen verringert die Gefahr, dass versehentlich das falsche Steuerelement aktiviert wird.

Die vorgeschriebene Mindest-Grösse beträgt `24 * 24px`. Ist ein aktivierbares Element kleiner, so muss es entsprechenden Abstand zu umgebenden aktivierbaren Elementen haben: ein `19 * 19px` grosses Element benötigt also einen Abstand von mind. `5px`.

**Ausnahmen:** Dies gilt nicht für Links, die sich innerhalb von Fliess-Text befinden (oder sonst wie abhängig sind von der umgebenden Zeilen-Höhe); sowie in Situationen, wo die Grösse eines Elements essenziell ist für deren Funktion: etwa auf einer Karte, wo eine Vielzahl von Points-of-Interests auf engem Raum angezeigt wird.

### Verantwortlichkeiten

- Das Designteam stellt sicher, dass aktivierbare Elemente die geforderte Mindestgrösse aufweisen oder genügend Abstand aufweisen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## ✅ Checkpoints

- [✅ Zielgrösse und Abstand](zielgroesse-und-abstand)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#target-size-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#target-size-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C42>

## Referenzen (intern)

### Weiterführende Ressourcen
- Intopia 2.5.8: <https://youtu.be/PTgOK2obw9s>
- <https://www.tpgi.com/how-to-test-2-5-8-target-size-minimum/>
- <https://www.wcag.com/developers/2-5-8-target-size-minimum-level-aa/>
- <https://www.digitala11y.com/understanding-sc-2-5-8-target-size-minimum/>
- <https://www.boia.org/blog/understanding-target-size-under-wcag-2.2-and-how-it-affects-people-with-disabilities>
- <https://wnfox.com/index.php/2024/07/19/getting-to-the-bottom-of-minimum-wcag-conformant-interactive-element-size/>
- <https://www.hellbusch.de/zielgroesse/>