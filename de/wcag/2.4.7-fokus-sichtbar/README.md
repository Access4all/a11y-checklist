---
id: "40"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-visible.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.7 Fokus sichtbar - AA

## Verstehen (in Kürze)

Der **Tastaturfokus** muss jederzeit **gut sichtbar** sein. Dies ermöglicht es Menschen, die keine Maus benutzen können, mit der Tastatur zu navigieren.

## Verstehen (ausführlich)

Wenn der Tastaturfokus nicht bzw. ungenügend sichtbar ist, erschwert dies die Navigation per Tastatur erheblich (siehe **📜-2.1.1 Tastatur**). Der oft Kontrast-arme Standard-Stil vieler Browser ist als Tastatur-Fokus gemäss WCAG 2.1 ausreichend (sofern er bei allen Elementen durchgängig sichtbar bleibt); ein Mindest-Kontrast wird erst auf Stufe AAA gefordert (siehe **📜-2.4.13 Fokus Erscheinungsbild**). Für viele Personen ist der Fokus so jedoch nicht genügend gut wahrnehmbar.

Deshalb empfehlen wir auch auf Stufe AA: Stellen Sie stets sicher, dass der Tastatur-Fokus jederzeit gut sichtbar ist, indem Sie einen prominenten, kontrastreichen Stil dafür festlegen. Ein gut sichtbarer Rahmen soll fokussierte Links, Schaltflächen, Radiobuttons, Checkboxen, verlinkte grafische Elemente, etc. auszeichnen. Das CSS Attribut `outline` ist besonders dafür geeignet, z.B. `outline: 2px dotted black`.

Beachten Sie insbesondere:

- Bewirkt der Fokus nur einen Farben-Wechsel (z.B. Invertieren von Text- und Hintergrund-Farbe), so muss dies für den Forced-Colors-Modus (**✅-9 Hochkontrast-Modus**) speziell optimiert werden.
    - Eine einfacher und effektiver Trick: setzen Sie nie `outline: none`, sondern verwenden Sie `outline-color: transparent`. Im Forced-Colors-Modus bleibt der Umriss dadurch sichtbar.
- Auch fokussierte Elemente müssen die Kontrast-Anforderungen erfüllen (siehe **📜-1.4.3 Kontrast (Minimum)**).
- Elemente, welche visuell nicht sichtbar sind, aber fokussiert werden können, müssen bei Fokus angezeigt werden (etwa Sprung-Links, siehe auch **📜-2.4.1 Blöcke überspringen**).
- Die Anzeige des Fokus sollte konsistent erfolgen, d.h. für möglichst viele interaktive Elemente gleichermassen zur Anwendung gelangen.

Ab WCAG 2.2 gilt zudem **📜-2.4.11 Fokus nicht verdeckt (Minimum)**.

### Verantwortlichkeiten

- Das Designteam definiert ein gut wahrnehmbares visuelles Design für den Fokus.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## Beispiele

```html
<!-- Generell sehr gut wahrnehmbarer Fokus -->
a:focus {
  outline: 2px dotted black;
}

<!-- Schlechtes Beispiel: Bei Windows High Contrast Mode nicht wahrnehmbarer Fokus (Farben Invertieren) -->
a:focus {
  color: white;
  background-color: black;
}
```

## Checkpoints

- [Tastatur-Fokus sichtbar](tastatur-fokus-sichtbar)
- [Sprung-Links sichtbar](sprung-links-sichtbar)