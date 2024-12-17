---
id: "17"
parent_id: "59"
created_at: "2024-03-09 12:42:46"
---

# 🏷️ aria-expanded

## Description

Es gibt diverse native HTML-Elemente, die man ausklappen kann, z.B. eine `<select>`-Liste. Wenn man eine solche mit dem Screenreader ausklappt, sagt der Screenreader den Ausklapp-Status an, z.B. "Eingeklappt" (wenn man die geschlossene Liste erreicht) oder "Ausgeklappt" (wenn man sie mit der `Leer`-Taste öffnet).

Oft möchte man aber z.B. mit einem Schalter ein direkt darunter liegendes Element aufklappen:

```html
<button aria-expanded="false">Weitere Informationen anzeigen</button>
<p hidden>Weitere Info...</p><!-- Das hidden-Attribut wird entfernt beim Aktivieren des Schalters -->
```

In solchen Fällen kann man [`aria-expanded`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-expanded) verwenden. Dadurch erhält der Screenreader beim Aktivieren ein Feedback "Ausgeklappt" (oder "Eingeklappt), ganz gemäss dem Prinzip: [🏷️ Auf Interaktion folgt stets Rückmeldung!](/en/tags/auf-interaktion-folgt-stets-ruckmeldung)