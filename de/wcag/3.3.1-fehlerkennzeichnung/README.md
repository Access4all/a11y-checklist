---
id: "54"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/error-identification.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.3.1 Fehlerkennzeichnung - A

## Verstehen (in Kürze)

**Fehlermeldungen** bei Formulareingaben müssen auf unterschiedlichen Wahrnehmungs-Kanälen **erfahrbar** und zugehörige **Eingabefelder identifizierbar** sein. Dies ermöglicht es Menschen mit unterschiedlichen Behinderungen, Fehlermeldungen ebenfalls wahrzunehmen und dazugehörige Formularfelder zu identifizieren.

## Verstehen (ausführlich)

Wenn beim Ausfüllen eines Formulars das System Eingabefehler erkennt, so müssen die entsprechenden Fehlermeldungen für alle Nutzenden erfahrbar und zugehörige Eingabefelder identifizierbar sein.

Für farbliche Hervorhebung gelten die gebräuchlichen Anforderungen an Kontraste, siehe [📜-1.4.3 Kontrast (Minimum)](/de/wcag/1.4.3-kontrast-minimum), bzw. an Farbverwendung siehe [📜-1.4.1 Benutzung von Farbe](/de/wcag/1.4.1-benutzung-von-farbe). Aber eine rein visuelle Änderung (z.B. rote oder dickere Umrandung eines fehlerhaften Eingabefelds, Hinzufügen eines Fehler-Symbols) reicht nicht aus, sondern es benötigt immer einen Hinweis **in Textform**, damit auch kognitiv Beeinträchtigte diesen verstehen können. Je nach Situation sind Best-Practices:

- Eine allgemeine Fehlermeldung am Anfang des Formulars, z.B. "Es sind 3 Fehler aufgetreten".
- Spezifische Fehlermeldungen direkt bei den fehlerhaften Eingabefeldern, z.B. "Vorname muss ausgefüllt werden".
    - Diese können auch als Liste am Anfang des Formulars stehen (am besten verlinkt mit den zugehörigen Eingabefeldern).

**Wichtig:** Für Screenreader-Nutzende reicht räumliche Gruppierung nicht aus, um eine Fehlermeldung mit dem entsprechenden Eingabefeld in Verbindung zu bringen; es muss eine Verknüpfung im Code erfolgen. Die einfachste Lösung besteht darin, die Fehlermeldungen (falls möglich) direkt ins `<label>`-Element zu setzen. Alternativ können sie mittels `aria-describedby` mit dem jeweiligen Eingabefeld (oder einem umspannenden `<fieldset>`-Element) verknüpft werden. Die Fehlermeldung wird dann automatisch vom Screenreader ausgegeben (zusätzlich zum `<label>`-Element), sobald das Eingabefeld fokussiert wird. Zur Handhabung von Formularen generell siehe auch [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen).

Zudem müssen Screenreader darüber informiert werden, dass überhaupt Fehlermeldungen angezeigt werden. Setzen Sie dazu den Fokus nach Abschicken des Formulars direkt ins erste fehlerhafte Feld, siehe [📜-2.4.3 Fokus-Reihenfolge](/de/wcag/2.4.3-fokus-reihenfolge). Zusätzlich können Sie einen entsprechenden Hinweis im `<title>`-Element (Seitentitel) platzieren, siehe [📜-2.4.2 Seite mit Titel](/de/wcag/2.4.2-seite-mit-titel). Manchmal ist auch eine Status-Nachricht hilfreich, siehe [📜-4.1.3 Statusmeldungen](/de/wcag/4.1.3-statusmeldungen).

Auch Client-seitige Formular-Validierung kann eingesetzt werden, reicht alleine aber oft nicht aus, siehe [📜-3.3.3 Vorschlag bei Fehler](/de/wcag/3.3.3-vorschlag-bei-fehler).

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass Fehler auf unterschiedlichen Wahrnehmungs-Kanälen **erfahrbar** sowie die zugehörigen Eingabefelder **identifizierbar** sind.
- Dass sie **aussagekräftig** (also hilfreich bei der Fehlerbehebung) sind, wird von [📜-3.3.3 Vorschlag bei Fehler](/de/wcag/3.3.3-vorschlag-bei-fehler) gefordert.

### Verantwortlichkeiten

- Das Designteam definiert ein gut wahrnehmbares visuelles Design für Eingabefehler.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## Beispiele

```html
<!-- Allgemeine Fehlermeldung -->
<p tabindex="-1">Wir konnten Sie leider nicht anmelden.</p><!-- Mit JavaScript focus() bei Page-Refresh -->
<p aria-live="polite">Wir konnten Sie leider nicht anmelden.</p><!-- Bei Single-Page-App -->

<!-- Pflichtfeld -->
<label>
  Vorname: * <!-- Visuell (Asterisk) -->
  <input type="text" required="true"><!-- Semantisch (required) -->
</label>
<p>Eingabefelder mit * sind Pflicht!</p>

<!-- Identifikation über Beschreibung innerhalb des Labels -->
<label>
  Biography
  <textarea id="biography" type="text"></textarea>
  <p class="error">Bitte erzählen Sie uns etwas über Ihre Biographie!</p>
</label>

<!-- Identifikation über Beschreibung mittels aria-describedby -->
<label for="name">Name</label>
<input id="name" type="text" aria-describedby="name_description">
<p id="name_description" class="error">Bitte geben Sie Ihren Namen ein!</p>

<!-- Beschreibung einer Gruppe von Radiobuttons mittels aria-describedby -->
<fieldset aria-describedby="gender_description">
  <legend>Geschlecht</legend>

  <input type="radio" id="gender_male" value="male"><label for="gender_male">Männlich</label>
  <input type="radio" id="gender_female" value="female"><label for="gender_female">Weiblich</label>
  <input type="radio" id="gender_other"><label for="gender_other">Anderes</label>

  <p id="gender_description" class="error">Bitte nennen Sie uns Ihr Geschlecht!</p>
</fieldset>
```

## ✅ Checkpoints

- [✅ Fehlermeldungen in Formularen](fehlermeldungen-in-formularen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#error-identification>
- <https://www.w3.org/WAI/WCAG22/quickref/#error-identification>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA2>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA21>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR18>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF5>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA19>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA21>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR18>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR32>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G139>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>

### Weiteres
- <https://wcag.com/developers/3-3-1-error-identification/>
- <https://www.wuhcag.com/error-identification/>
- <https://www.digitala11y.com/understanding-sc-3-3-1-error-identification/>
