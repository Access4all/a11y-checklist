---
id: "59"
parent_id: ""
created_at: "2024-10-08 16:59:11"
video_ids: "[]"
---

# 🏷️ ARIA Attribute

## Beschreibung

HTML-Attribute, welche eingesetzt werden können, um die Barrierefreiheit von Webseiten zu verbessern. Mit ARIA kann man fehlende semantische Information ergänzen, aber auch existierende verändern.

- Es gibt das `role`-Attribut, welches die Rolle eines Elements setzt, z.B. `role="button"`.
- Zudem gibt es diverse `aria-*`-Attribute, welche den Zustand eines Elements setzen, z.B. `aria-expanded="true"`.

Wichtig: ARIA darf nur eingesetzt werden, wenn entweder kein natives HTML-Attribut oder HTML-Element für denselben Zweck existiert, oder wenn dieses aus technischen Gründen nicht zur Verfügung steht!

🙂 Beispiel:

```html
<button aria-expanded="true">Mehr Infos</button>
```

Es gibt kein natives HTML-Attribut für den Ausklapp-Zustand eines Elements. Deshalb ist [`aria-expanded`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-expanded) eine gute Wahl.

😡 Beispiel:

```html
<div role="button">Nachricht Abschicken</div>
```

Stattdessen besser ein natives [`<button>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button)-Element verwenden!

## Videos

Keine Videos verfügbar.
