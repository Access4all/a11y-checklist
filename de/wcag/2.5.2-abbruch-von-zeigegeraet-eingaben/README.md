---
id: "100"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pointer-cancellation.html"
created_at: "2019-11-10 20:24:28"
---

# 📜 2.5.2 Abbruch von Zeigegerät-Eingaben - A

## Verstehen (in Kürze)

**Zeigereingaben** müssen noch während der Eingabe **abgebrochen** werden können, oder es muss möglich sein, sie **rückgängig** zu machen. Dies ermöglicht das Abbrechen von unbeabsichtigten Eingaben, wodurch das Risiko minimiert wird, dass Funktionalitäten versehentlich ausgeführt werden.

## Verstehen (ausführlich)

Diverse Behinderungsformen schränken die Präzision von Eingaben während der Benutzung von Geräten ein, wodurch es zu Falscheingaben kommen kann. Drückt beispielsweise ein an Muskelzittern (Tremor) leidender Mensch aus Versehen den falschen Schalter (etwa "Anruf beenden" anstelle von "Stumm schalten"), so kann er die Eingabe normalerweise noch abbrechen, indem er den Finger vom Schalter weg bewegt und erst dann hoch hebt (und somit verhindert, dass die Aktion ausgelöst wird).

Deshalb muss Funktionalität, welche mit einem Zeigegerät bedient wird, mindestens einen der folgenden Punkte erfüllen:

- **Kein `down`-Event:** Der `down`-Event wird gar nicht genutzt, um die Funktion (oder einen Teil derselben) auszulösen.
- **Abbrechen oder rückgängig machen:** Die Funktion wird beim `up`-Event ausgelöst, und es steht ein Mechanismus zur Verfügung, um die Funktion vor dem Ausführen abzubrechen oder die Funktion nach dem Ausführen rückgängig zu machen.
- **Umkehrung bei `up`:** Der `up`-Event kehrt jegliche Auswirkung des vorangehenden `down`-Events um. Beispiel: Jemand hält die "Abspielen"-Schaltfläche eines Video-Players gedrückt, was das Abspielen des Videos startet, und hört dann auf zu drücken, was das Abspielen wieder stoppt. Dadurch kehrt man zum Ausgangspunkt zurück und hat den Vorgang effektiv abgebrochen.
- **Essenziell:** Das Ausführen der Funktion auf dem `down`-Event ist unerlässlich. Beispiel: Zeichnen mittels Maus, Eingabestift oder Finger auf einem Touchscreen; Interagieren mit einer virtuellen Tastatur; Emulieren eines physischen Tastendrucks (z.B. in einer Musik-Applikation, die eine Klaviertastatur anbietet).

### Hinweise

- Für komplexere Interaktionen, z.B. Drag-and-Drop (siehe auch [📜-2.5.7 Ziehende Bewegungen](/de/wcag/2.5.7-ziehende-bewegungen)), steigt die Notwendigkeit für eine Abbruch- oder Rückgängig-Funktion.
- Wenn die Funktion nach dem Ausführen durch einen Dialog bestätigt werden muss, dann entfällt die Notwendigkeit für eine Rückgängig-Funktion.
- Unter `up`-Event versteht man das Ausführen einer Aktion, wenn der Zeiger losgelassen wird, also die Maustaste losgelassen bzw. auf einem Touchscreen der Finger angehoben wird. Als `down`-Events gelten `mousedown`, `touchstart` und `pointerdown`.

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass die Vorgaben für Zeigereingaben-Abbrüche umgesetzt werden. Empfohlen sind Standard-HTML-Elemente und `click`-Events, während `down`-Events wenn möglich vermieden werden sollten.

## Beispiele

```html
<!-- Problematisches Reagieren auf einen Down-Event -->
<button onmousedown="submitForm()">
  Bestellung abschicken
</button>

<!-- Besser (da abbrechbar) -->
<button onclick="submitForm()">
  Bestellung abschicken
</button>
```

## ✅ Checkpoints

- [✅ Zeigereingaben abbrechbar](zeigereingaben-abbrechbar)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pointer-cancellation>
- <https://www.w3.org/WAI/WCAG22/quickref/#pointer-cancellation>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G210>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G212>

### Weiteres
- <https://www.wcag.com/developers/2-5-2-pointer-cancellation/>
- <https://www.wuhcag.com/pointer-cancellation/>
- <https://www.digitala11y.com/2-5-2-pointer-cancellation/>
- <https://www.boia.org/wcag2/cp/2.5.2>
