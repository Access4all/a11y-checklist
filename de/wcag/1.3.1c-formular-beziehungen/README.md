---
id: "80"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 1.3.1c Formular-Beziehungen

## Verstehen (in Kürze)

**Formularfelder** müssen über **korrekt verbundene Labels und Anweisungen** verfügen; zudem müssen **Abschnitte** von umfangreicheren Formularen sowie zusammengehörige Radiobuttons und Checkboxen **gruppiert** werden. Dies ermöglicht assistierenden Technologien (z.B. Screenreadern), die einzelnen Elemente korrekt anzukündigen, damit mit ihnen interagiert werden kann.

## Verstehen (ausführlich)

Formularfelder (etwa Textfelder oder Checkboxen) müssen ein korrekt verknüpftes Label aufweisen, typischerweise das `<label>`-Element: es muss das Formularfeld entweder umspannen oder mittels `for`-Attribut mit demselben verknüpft werden. Nur ein einzelnes `<label>` pro Eingabefeld ist empfohlen.

Das `placeholder`-Attribut hingegen ist mit Bedacht einzusetzen, da es eine Reihe von Problemen aufweist (etwa verschwindet es bei Eingabe, assistierende Technologien interpretieren es nicht einheitlich, und auch die Kontrastsituation in Abgrenzung zu eingegebenem Text ist schwierig).

### Schaffung von Abschnitten

Bei umfangreicheren Formularen eignet sich die `<fieldset>`/`<legend>`-Kombination zur Gruppierung zusammen gehörender Elemente; auch Checkboxen und Radiobuttons sollen damit gruppiert werden. `<fieldset>`/`<legend>`-Kombinationen können verschachtelt werden. Eine `<legend>` darf Plain-Text oder eine Überschrift (z.B. `<h3>`) enthalten.

Wir empfehlen zudem, umfangreiche Formulare auf mehrere Seiten (Prozess-Schritte) aufzuteilen.

### Anweisungen in Formularen

Eine Überschrift (z.B. `<h1>`) am Anfang eines Formulars ist sinnvoll. Sollen sich **zwischen** den Eingabe-Feldern aber weitere Anweisungen (z.B. Paragrafen, Listen, etc.) befinden, so müssen diese mittels `aria-describedby` mit den relevanten Elementen verknüpft werden, da sie sonst vom Screenreader verpasst werden beim "Tabben":

- Eine Überschrift kann etwa mit der nachfolgenden `<legend>` verknüpft oder in diese hinein gesetzt werden.
- Allgemeine einleitende Inhalte (Paragraphen, Listen...) können mit dem umgebenden `<fieldset>` verknüpft werden.
- Spezifische Hinweise (z.B. die Format-Anforderungen an ein Passwort) können mit dem jeweiligen Eingabefeld verknüpft werden.
- Dasselbe gilt bei Fehlermeldungen bei Falscheingabe (z.B. "Das Passwort benötigt mind. 1 Sonderzeichen").
    - Nach Abschicken eines fehlerhaft ausgefüllten Formulars soll der Tastatur-Fokus zudem ins erste fehlerhafte Eingabefeld gesetzt werden; siehe dazu auch **📜-2.4.3 Fokus-Reihenfolge**.

Wir empfehlen, mit Anweisungen in Formularen zurückhaltend zu sein; für ausführlichere Informationen kann z.B. auf eine separate Seite verlinkt oder diese per Dialog (**✅-103 Dialoge**) oder Akkordeon (**✅-100 Akkordeons**) eingeblendet werden.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass vorhandene Labels und Anweisungen in Formularen **korrekt umgesetzt** (und dadurch mit den Eingabefeldern verknüpft) sind.
- Dass solche überhaupt **vorhanden** sind, wird von **📜-3.3.2 Beschriftungen (Labels) oder Anweisungen** gefordert.
- Dass sie **aussagekräftig** sind, wird von **📜-2.4.6 Überschriften und Beschriftungen (Labels)** gefordert.

### Verantwortlichkeiten

- Das Designteam ist sich bewusst, dass komplexe Formulare nicht trivial umzusetzen sind. Es versucht, Komplexität zu vermeiden: etwa durch das Aufteilen eines Formulars in mehrere Prozess-Schritte, sowie durch den Verzicht auf übermässig viel erklärenden Text zwischen den Eingabefeldern.
- Das Entwicklungsteam versieht alle Formularfelder mit korrekten Labels und sinnvollen Gruppierungen. Zusätzliche Informationen (etwa Fehlermeldungen) werden ebenfalls verknüpft.

## Beispiele

```html
<!-- Typisches Formular -->
<form action="...">
  <fieldset><!-- Erste Gruppierung -->
    <legend>
      Lieferadresse
    </legend>

    <label for="first_name">
      Vorname:
    </label>
    <input type="text" id="first_name" />

    <label for="last_name">
      Nachname:
    </label>
    <input type="text" id="last_name" />

    <label><!-- Label umspannt Eingabefeld -->
      <input type="checkbox" />
      Ja, ich bin volljährig.
    </label>
  </fieldset>

  <fieldset><!-- Zweite Gruppierung -->
    <legend>
      Rechnungsadresse
    </legend>

    <!-- Weitere Felder -->

  </fieldset>
</form>

<!-- Radiobuttons / Checkboxen -->
<fieldset>
  <legend>
    Geschlecht
  </legend>

  <label>
    <input type="radio" name="female" />
    Weiblich
  </label>

  <label>
    <input type="radio" name="male" />
    Männlich
  </label>

  <label>
    <input type="radio" name="other" />
    Anderes
  </label>
</fieldset>

<!-- Zusätzliche Information verknüpfen -->
<input aria-describedby="password_help" type="password" />
<p id="password_help">
  Das Passwort muss mindestens 8 Zeichen lang sein.
</p>
```

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H44>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H65>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H71>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF10>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF12>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-3-1-info-und-beziehungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-1h-beschriftung-von-formularelementen-programmatisch-ermittelbar>

### Weiteres
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>