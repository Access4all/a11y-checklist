---
id: "94"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/content-on-hover-or-focus.html"
created_at: "2019-11-10 20:20:52"
---

# 📜 1.4.13 Eingeblendeter Inhalt bei Darüberschweben (Hover) oder Fokus - AA

## Verstehen (in Kürze)

**Einblendbare Inhalte**, die angezeigt werden, wenn Elemente den Mauszeiger- oder Tastaturfokus erhalten (z.B. benutzerdefinierte Tooltips oder Dropdown-Navigationen), müssen **ausblendbar, hoverbar und dauerhaft** sein. Dies ermöglicht die uneingeschränkte Interaktion sowohl mit diesen als auch mit den umgebenden Inhalten.

## Verstehen (ausführlich)

Elemente, die durch die Interaktion der Benutzenden ein- oder ausgeblendet werden (z.B. Tooltips, siehe [✅ Tooltips / Toggletips](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets/tooltips-toggletips)), können verwirren, wenn sie sich nicht vorhersehbar verhalten und bedienen lassen. Insbesondere für Menschen mit Sehbehinderungen, die mit starker Zoomvergrösserung arbeiten, sind zusätzliche Inhalte problematisch, die bei Mauszeiger- oder Tastaturfokus eingeblendet werden.

Folgende Aspekte sind zu beachten:

- **Ausblendbar:** Eingeblendete Inhalte verdecken häufig andere Inhalte. Es muss eine Möglichkeit geben, einen eingeblendeten Inhalt zu schliessen, ohne den Fokus zu verschieben (z.B. durch Drücken der `Esc`-Taste oder durch Aktivieren desjenigen Elements, dessen Fokussierung den Inhalt eingeblendet hat).
    - Ausgenommen sind Fälle, bei denen der eingeblendete Inhalt eine Fehlermeldung ist oder keine anderen Inhalte verdeckt oder ersetzt.
- **Hoverbar:** Inhalte sind wegen eines starken Zoomfaktors oft nur teilweise sichtbar. Wenn das Verschieben des Mauszeigers zusätzlichen Inhalt anzeigt (Hover), dann muss der Mauszeiger über den zusätzlichen Inhalt bewegt werden können (was meist den sichtbaren Ausschnitt verschiebt), ohne dass dieser wieder verschwindet.
    - Ausgenommen sind Fälle, bei denen Inhalte eingeblendet werden, wenn ein bestimmtes Element den Tastaturfokus erhält.
- **Dauerhaft (persistent):** Menschen mit Sehbehinderungen brauchen häufig mehr Zeit, um Inhalte zu lesen. Eingeblendete Inhalte müssen deshalb so lange zur Verfügung stehen, bis sie aktiv geschlossen werden: also bis weiter getabbt, der Mauszeiger vom Element weg bewegt, oder der Inhalt durch gezielte Interaktion aufgehoben wurde.
    - Ausgenommen sind Fälle, bei denen der eingeblendete Inhalt nicht länger gültig ist.

### Hinweise

- Wenn das Aktivieren (Klicken, Tippen, Enter-Taste) desjenigen Elements, das den Inhalt einblendet, zum Schliessen des eingeblendeten Inhalts führt, muss der Kontext bestehen bleiben (und es dürfen keine weiteren Aktionen ausgelöst werden, die den Kontext ändern, etwa das Aktivieren eines Links).
- Wenn Inhalte durch Hover eingeblendet werden, müssen diese auch bei Tastaturfokus eingeblendet werden, ausser sie werden alternativ zur Verfügung gestellt. Für Anforderungen in Bezug auf Tastatur, beachten Sie Erfolgskriterium [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur).
- Die Anforderung gilt nicht für eingeblendete Inhalte, deren Verhalten durch den Nutzer-Agenten (z.B. Browser) bestimmt wird (z.B. native `title`-Attribute).

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass via Hover oder Fokus eingeblendete Inhalte ausblendbar und hoverbar sind und sich nicht selbsttätig schliessen.

## ✅ Checkpoints

- [✅ Inhalte per Hover oder Fokus](inhalte-per-hover-oder-fokus)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#content-on-hover-or-focus>
- <https://www.w3.org/WAI/WCAG22/quickref/#content-on-hover-or-focus>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR39>

### Weiteres
- <https://www.wcag.com/authors/1-4-13-content-on-hover-or-focus/>
- <https://www.digitala11y.com/understanding-sc-1-4-13-content-on-hover-or-focus/>
- <https://www.boia.org/blog/tips-for-meeting-wcag-1.4.13-content-on-hover-or-focus>
