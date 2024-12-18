---
id: "39"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/headings-and-labels.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.4.6 Überschriften und Beschriftungen (Labels) - AA

## Verstehen (in Kürze)

**Überschriften und Labels** müssen **aussagekräftig** sein. Dies ermöglicht eine gute Navigation innerhalb der Inhalte und die zielführende Nutzung derselben.

## Verstehen (ausführlich)

Überschriften müssen den zugeordneten Web-Inhalt ausreichend informativ und korrekt bezeichnen; dies hilft die Inhalte zu unterscheiden und anzusteuern. Häufige Fehler sind etwa wenig aussagekräftige oder mehrere gleich lautende Schalter oder Überschriften auf einer Seite. Bitte beachten Sie auch [📜-1.3.1a Überschriften-Struktur](/de/wcag/1.3.1a-ueberschriften-struktur) und [📜-2.5.3 Beschriftung im zugänglichen Namen](/de/wcag/2.5.3-beschriftung-im-zugaenglichen-namen).

Formularelemente müssen ebenfalls gut durch Labels bezeichnet sein (mittels `<label>`, siehe [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen)). Ein häufiger Fehler sind etwa alleine mit Asterisk (`*`) als Pflichtfelder markierte Eingabefelder (ohne weitere Techniken wie etwa das `required`-Attribut): diese visuell gängige Konvention hat für assistierende Technologien keinerlei Aussagekraft.

**Empfehlung:** Verzichten Sie, wenn möglich, auf den Einsatz des `title`-Attributs. Dieses wird nicht einheitlich von assistierenden Technologien (z.B. Screenreadern) ausgegeben.



### Fremdgenerierter Inhalt

Auf unzugänglichen, fremdgenerierten Inhalt muss hingewiesen werden! Z.B. indem direkt vor entsprechendem Inhalt eine kurze (visuell versteckte) Information steht, dass nicht barrierefreier, fremderzeugter Inhalt folgt.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass vorhandene _Überschriften und Labels_ **aussagekräftig** sind.
- Dass _Überschriften_ überhaupt **vorhanden** sind, ist nicht immer erforderlich (Überschriften sind aber meistens die beste Technik, um Inhalte zu benennen und voneinander abzugrenzen); dass _Labels_ überhaupt **vorhanden** sind, wird von [📜-3.3.2 Beschriftungen (Labels) oder Anweisungen](/de/wcag/3.3.2-beschriftungen-labels-oder-anweisungen) gefordert.
- Dass _Überschriften_ **semantisch und hierarchisch korrekt umgesetzt** sind, wird von [📜-1.3.1a Überschriften-Struktur](/de/wcag/1.3.1a-ueberschriften-struktur) gefordert; dass _Labels_ **semantisch korrekt umgesetzt** (und dadurch mit den Eingabefeldern verknüpft) sind, wird von [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen) gefordert.

### Verantwortlichkeiten

- Das Designteam legt aussagekräftige Bezeichnungen für generische Überschriften und Labels fest.
- Die Inhaltsverantwortlichen beschriften Überschriften und Labels im Inhalt aussagekräftig.

## Beispiele

```html
<article>
  <h3>iPhone X</h3>
  <p>Das iPhone X hat die folgenden Eigenschaften: ...</p>
  <button>Kaufen</button><!-- Erster "Kaufen"-Schalter -->
</article>

<article>
  <h3>iPhone XS</h3>
  <p>Das iPhone XS...</p>
  <button>Kaufen</button><!-- Schlecht: zweiter "Kaufen"-Schalter -->
</article>

<article>
  <h3>iPhone XS</h3>
  <p>Das iPhone XS...</p>
  <button>
    <!-- Visuell versteckt (für CSS siehe 1.3.1a) -->
    <span class="visually-hidden">iPhone XS</span><!-- Besser -->
    Kaufen
  </button>
</article>
```

## ✅ Checkpoints

- [✅ Überschriften und Labels](ueberschriften-und-labels)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#headings-and-labels>
- <https://www.w3.org/WAI/WCAG22/quickref/#headings-and-labels>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G130>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G131>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/2-4-6-aussagekraeftige-ueberschriften-und-beschriftungen/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-6-aussagekraeftige-ueberschriften-und-beschriftungen>

### Weiteres
- <https://www.wcag.com/authors/2-4-6-headings-and-labels/>
- <https://www.digitala11y.com/headings-labels-understanding-sc-2-4-6/>
- <https://www.boia.org/wcag2/cp/2.4.6>
