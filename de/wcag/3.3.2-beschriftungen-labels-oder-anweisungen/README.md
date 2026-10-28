---
id: "55"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/labels-or-instructions.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.3.2 Beschriftungen (Labels) oder Anweisungen - A

## Verstehen (in Kürze)

**Labels und Anweisungen in Formularen** müssen **vorhanden** sein. Dies fördert das Erkennen und Verstehen von Eingabefeldern, so dass auch kognitiv beeinträchtigte Menschen diese anforderungsgemäss ausfüllen können.

## Verstehen (ausführlich)

Wenn Anweisungen ein Formular näher beschreiben (etwa Angaben zum Eingabeformat, oder ob ein Feld eine Eingabe erfordert), so müssen diese für alle Nutzenden erfahrbar und das zugehörige Eingabefeld identifizierbar sein. Räumliche Gruppierung reicht für visuell beeinträchtigte Menschen mit Screenreader nicht aus.

Verwenden Sie sinngemäss die in [📜-3.3.1 Fehlerkennzeichnung](/de/wcag/3.3.1-fehlerkennzeichnung) vorgestellten Techniken rund um `<label>`-Element und `aria-describedby`-Attribut. Stellen Sie sicher, dass Labels auch bei Eingabe sichtbar bleiben: ein `placeholder`-Attribut allein reicht nicht aus, da es bei der Eingabe verschwindet. Spezifische Eingabeformate und Konventionen müssen erklärt werden, etwa wenn für die Bezeichnung von Pflichtfeldern ein Asterisk (`*`) eingesetzt wird, oder wenn ein Passwort ein bestimmtes Format haben muss. Zur Handhabung von Formularen generell siehe auch [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen).

### Verantwortlichkeiten

- Das Designteam definiert ein gut wahrnehmbares visuelles Design für Labels und Anweisungen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass Labels und Anweisungen **vorhanden** sind.
- Dass sie **aussagekräftig** sind, wird von [📜-2.4.6 Überschriften und Beschriftungen (Labels)](/de/wcag/2.4.6-ueberschriften-und-beschriftungen-labels) gefordert.
- Dass sie korrekt umgesetzt (und dadurch mit den Eingabefeldern verknüpft) sind, wird von [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen) gefordert.

## Beispiele

```html
<!-- Beschreibung des Pflichtfeld-Asterisk (*) mittels verstecktem Text -->
<form>
  <label for="name">
    Name
    <span class="required">*</span>
    <span class="visually-hidden">(Pflichtfeld)</span><!-- Visuell versteckt (für CSS siehe 1.3.1a) -->
  </label>
  <input id="name" type="text" />

  <p>
    <span class="required">*</span>
    Pflichtfeld
  </p>
</form>

<!-- Beschreibung des Pflichtfeld-Asterisk (*) mittels aria-describedby -->
<form>
  <label for="name">
    Name
    <span class="required">*</span>
  </label>
  <input aria-describedby="required-description" id="name" type="text" />

  <p id="required-description">
    <span class="required">*</span>
    Pflichtfeld
  </p>
</form>

<!-- Beschreibung eines Eingabeformats mittels aria-describedby -->
<form>
  <label for="password">
    Passwort
  </label>
  <input aria-describedby="password-description" id="name" type="password" />

  <p id="password-description">
    Verwenden Sie mindestens 8 Gross- und Kleinbuchstaben, Zahlen sowie Sonderzeichen.
  </p>
</form>

<!-- Beschreibung des Pflichtfelds mittels required-Attribut -->
<form>
  <label for="name">
    Name
    <span class="required">*</span>
  </label>
  <input required id="name" type="text" />

  <p>
    <span class="required">*</span>
    Pflichtfeld
  </p>
</form>
```

## ✅ Checkpoints

- [✅ Pflichtfelder](pflichtfelder)
- [✅ Sichtbare Labels](sichtbare-labels)
- [✅ Formatangaben](formatangaben)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#labels-or-instructions>
- <https://www.w3.org/WAI/WCAG22/quickref/#labels-or-instructions>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G131>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA1>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA9>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA17>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G89>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G184>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G162>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H90>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF5>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H44>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF10>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H71>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G167>

### Weiteres
- <https://wcag.com/developers/3-3-2-labels-instructions/>
- <https://www.wuhcag.com/labels-or-instructions/>
- <https://www.digitala11y.com/understanding-sc-3-3-2-labels-or-instructions/>
