---
id: "89"
parent_id: "65"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/identify-input-purpose.html"
created_at: "2019-11-10 20:19:06"
---

# 📜 1.3.5 Eingabezweck bestimmen - AA

## Verstehen (in Kürze)

Bei Formularen mit **Angaben zur eigenen Person** muss der Eingabezweck der entsprechenden Formularfelder maschinenlesbar sein (`autocomplete`-Attribut). Dies ermöglicht das automatische Ausfüllen derselben, was insbesondere Menschen mit kognitiven und motorischen Behinderungen zugutekommt.

## Verstehen (ausführlich)

Alle Menschen, insbesondere aber diejenigen mit kognitiven Behinderungen, profitieren von klar beschrifteten Eingabefeldern. Menschen mit motorischen Behinderungen profitieren vom automatischen Ausfüllen von Formularfeldern, weil dadurch die Notwendigkeit feinmotorischer Bewegungen reduziert wird. Programmatische Methoden können den Zweck eines Eingabefeldes erkennen und Antworten vorgeben.

Damit Benutzeragenten (z.B. Browser) Formularfelder automatisch ausfüllen können, wird der korrekte Einsatz des `autocomplete`-Attributs vorausgesetzt. So wird sichergestellt, dass programmiertechnisch diejenigen Felder vorbefüllt werden können, zu denen die Daten bereits vorliegen.

**Wichtig:** Dies trifft nur auf Formularfelder zu, die Daten über die Person sammeln. Eine abschliessende Liste der möglichen Werte findet sich unter <https://www.w3.org/TR/WCAG22/#input-purposes>.

**Hinweis:** Sowohl fehlende als auch falsche `autocomplete`-Attribute (etwa `autocomplete="birthday"` statt `autocomplete="bday"`) verletzen dieses Erfolgskriterium.

### Verantwortlichkeiten

- Das Entwicklungsteam versieht jedes Formularfeld, das Daten über die ausfüllende Person sammelt und in der Liste der verfügbaren Werte aufgeführt ist, mit dem passenden `autocomplete`-Attribut.

## Beispiele

```html
<!-- Für Felder, die Vor- und Nachnamen verlangen-->

<label for="first_name">Vorname:</label> <input id="first_name" autocomplete="given-name" />
<label for="last_name">Nachname:</label> <input id="last_name" autocomplete="family-name" />
```

## ✅ Checkpoints

- [✅ Automatisches Ausfüllen](automatisches-ausfuellen)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#identify-input-purpose>
- <https://www.w3.org/WAI/WCAG22/quickref/#identify-input-purpose>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H98>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/1-3-5-eingabezweck-bestimmen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-3-5-eingabefelder-zu-nutzerdaten-vermitteln-den-zweck>

### Weiteres
- <https://www.wcag.com/developers/1-3-5-identify-input-purpose/>
- <https://www.digitala11y.com/what-are-the-autocomplete-attributes-defined-in-1-3-5-input-purpose/>
