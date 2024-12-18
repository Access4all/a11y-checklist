---
id: "29"
parent_id: "59"
created_at: "2024-03-09 14:35:03"
---

# 🏷️ aria-describedby

## Description

Damit kann zusätzliche Information an ein Element (z.B. an einen Schalter) geknüpft werden, welches der Screenreader beim Erreichen mit-ansagt.

V.a. für Fehlermeldungen sinnvoll.

### Wird nur im Focus-Modus angesagt

Nur wenn man im Fokus-Modus ([🏷️ Fokus-Modus](/en/tags/fokus-modus)) auf ein Element springt, sagt der Screenreader die verknüpfte Beschreibung an. Im Browse-Modus ([🏷️ Browse-Modus](/en/tags/browse-modus)) nicht.

Beispiel:

```html
<button aria-describedby="info">Warenkorb</a>
<!-- Diverse weitere Inhalte -->
<p id="info">3 Artikel</p>
```

Erreicht man im Fokus-Modus den Button, so wird in etwa folgendes ausgegeben:

> Warenkorb Schalter, 3 Artikel

Erreicht man ihn im Browse-Modus, dann folgendes:

> Warenkorb Schalter

Man muss sich also stets gut überlegen, ob die verknüpfte Info nur im Fokus-Modus relevant ist, oder auch im Browse-Modus. Entsprechend wird `aria-describedby` vor allem verwendet, um in Formularen zusätzliche Informationen mit Eingabefeldern zu verknüpfen:

```
<label for="user-password">Ihr Passwort:</label>
<input id="user-password" type="password" aria-describedby="password-info">
<p id="password-info">Das Passwort muss mindestens ein Sonderzeichen beinhalten und 8 Zeichen lang sein.</p>
```

### Sagt verknüpfte Inhalte nur als Plain-Text an

Elemente, die via `aria-describedby` mit einem Element verknüpft sind, werden nur als Plain-Text ausgegeben. Information über enthaltene Semantik wird ausgegeben (z.B. ein Link "AGBs lesen" in einem Paragraf wird nur als "AGBs lesen" angesagt, nicht als "Link AGBs lesen"). Insofern müssen solche beschreibenden Texte so geschrieben werden, dass sie auch ohne semantische Info verständlich bleiben.

Vgl. z.B. [✅ Text elements between input fields](/en/wcag/1.3.1c-forms-labels-and-fieldsets/text-elements-between-input-fields) und [✅ Error messages in forms](/en/wcag/3.3.1-error-identification/error-messages-in-forms).

### Mehrere IDs möglich

Man kann nicht nur eine ID übergeben (`aria-describedby="help-text"`), sondern mehrere durch Leerzeichen getrennt (`aria-describedby="help-text another-help-text"`).🇩🇪 Currently only available in German.
