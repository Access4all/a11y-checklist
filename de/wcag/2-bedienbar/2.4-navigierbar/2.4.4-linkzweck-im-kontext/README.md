---
id: "37"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/link-purpose-in-context.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.4 Linkzweck (im Kontext) - A

## Verstehen (in Kürze)

**Links** müssen so **beschriftet** werden, dass ihr **Ziel und Zweck klar erkennbar** ist. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), Links auch ausserhalb ihres unmittelbaren Kontexts (etwa in einer Auflistung aller Links) aussagekräftig anzusagen.

## Verstehen (ausführlich)

Links sollen auch ohne den unmittelbaren Kontext, der sie umgibt, verständlich sein. Blinde Menschen lassen sich häufig vom Screenreader alle Links einer Seite als eine Liste anzeigen bzw. vorlesen; Linktexte wie etwa "Weiter" oder "Mehr" sind dann wenig informativ, gerade wenn sich mehrere davon auf derselben Seite befinden (etwa auf einer News-Übersichtsseite).

Versehen Sie deshalb jeden Link mit einem möglichst aussagekräftigen Linktext. Anstelle von:

> Erfahren Sie [mehr](https://example.com) über unsere Firma!

...verwenden Sie besser:

> Erfahren Sie [mehr über unsere Firma](https://example.com)!

Bei alleinstehenden, textlich uninformativen Links empfehlen wir, den Linktext zu ergänzen durch Inhalt, welcher visuell ausgeblendet wird:

```html
<a href="...">
  Mehr
  <span class="visually-hidden">zu unserer Firma</span>
</a>
```

**Hinweis:** Tatsächlich ist gemäss WCAG der Kontext ausreichend gegeben, wenn sich hilfreicher Text innerhalb desselben Paragrafen, Listenelements oder derselben Tabellenzelle befindet wie der Link. Das obige Beispiel `...<a href="...">mehr</a>...` würde also ausreichen, wäre aber im genannten Screenreader-Szenario (Link-Liste anzeigen) dennoch nicht hilfreich. Wir empfehlen deshalb, Link-Beschriftungen stets unabhängig von ihrem Kontext selbstsprechend zu gestalten.

**Weiteres:** Links, welche auf andere Dateiformate verlinken (etwa PDF), sollten einen Hinweis auf den Formatwechsel enthalten. Zusätzlich wird dies idealerweise durch die Angabe der Grösse der verlinkten Datei ergänzt, etwa "Erklärungsdokument WCAG 2.1 (Word, 3MB)". Mehrere Links auf dasselbe Ziel sollten vermieden werden: etwa sollten bei einem News-Teaser nicht Datum, Titel und Foto separat verlinkt sein, sondern das gesamte Element als einzelner Link implementiert sein.

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass generische Links angereichert werden mit aussagekräftiger (ggf. visuell versteckter) Information, sowie dass Links generell aussagekräftig und eindeutig sind.
- Die Inhaltsverantwortlichen beschriften Links innerhalb von Text aussagekräftig und eindeutig.

## Beispiele

```html
<!-- Gut beschriebener Linkzweck -->
<p>
  Erfahren Sie
  <a href="...">mehr über unsere Firma</a>!
</p>

<!-- Schlecht beschriebener Linkzweck (aber zumindest in Kontext) -->
<p>
  Erfahren Sie
  <a href="...">mehr</a>
  über unsere Firma!
</p>

<!-- Schlecht beschriebener Linkzweck (ohne Kontext) -->
<p>
  Unsere Firma gibt es seit 20 Jahren.
</p>
<a href="...">Mehr dazu erfahren!</a><!-- Link ausserhalb des Paragrafen -->

<!-- Schlecht umgesetzter Teaser -->
<article>
  <a href="wahlergebnisse.html"><!-- Erste Verlinkung -->
    <h2>Wahlresultate bekannt</h2>
  </a>

  <a href="wahlergebnisse.html"><!-- Zweite (mehrfache) Verlinkung -->
    <time>Wahlergebnisse wurden publiziert</time>
  </a>

  <a href="wahlergebnisse.html"><!-- Dritte (mehrfache) Verlinkung -->
    <img src="urne.jpg" alt="Urne">
  </a>
</article>

<!-- Gut umgesetzter Teaser, Variante 1 -->
<a href="wahlergebnisse.html"><!-- Einzelne Verlinkung -->
  <article>
    <h2>Wahlresultate bekannt</h2>

    <time>Wahlergebnisse wurden publiziert</time>

    <img src="urne.jpg" alt="Urne">
  </article>
</a>

<!-- Gut umgesetzter Teaser, Variante 2 -->
<article>
  <a href="wahlergebnisse.html"><!-- Einzelne Verlinkung -->
    <h2>Wahlresultate bekannt</h2>
  </a>

  <time>Wahlergebnisse wurden publiziert</time>

  <img src="urne.jpg" alt="Urne">
</article>
```

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#link-purpose-in-context>
- <https://www.w3.org/WAI/WCAG22/quickref/#link-purpose-in-context>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G91>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H30>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H24>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G53>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA7>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA8>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H77>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H78>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H79>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H81>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF11>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF13>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/2-4-4-linkzweck-im-kontext/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-4-aussagekraeftige-linktexte>

### Weiteres
- <https://wcag.com/authors/2-4-4-link-purpose-in-context/>
- <https://www.wuhcag.com/link-purpose-in-context/>
- <https://www.digitala11y.com/link-purpose-in-context-understanding-sc-2-4-4/>