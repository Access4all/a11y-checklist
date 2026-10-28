---
id: "84"
parent_id: "11"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/info-and-relationships.html"
created_at: "2016-01-22 11:03:47"
---

# 📜 1.3.1a Überschriften-Struktur

## Verstehen (in Kürze)

**Überschriften** müssen **semantisch und hierarchisch korrekt** umgesetzt sein. Dies ermöglicht es assistierenden Technologien (z.B. Screenreadern), die Struktur und Inhalte der Seite zu erfassen und eine schnelle Übersicht sowie Navigation darin anzubieten.

## Verstehen (ausführlich)

Es ist wichtig, dass die Überschriftenstruktur einer Seite deren Inhalte detailliert abbildet und hierarchisch korrekt ist (z.B. keine übersprungenen Ebenen). Dies gilt nicht nur für den Hauptinhalt einer Seite, sondern auch für visuell klar abtrennbare Bereiche, welche weitere Inhalte beherbergen, wie etwa Kopf- und Fussbereiche, Navigation, weiterführende Informationen, Werbung, etc. Sollte das visuelle Design gewisse Überschriften nicht vorsehen, dann können diese auf visueller Ebene versteckt werden.

Es müssen die Elemente `<h1>` bis `<h6>` verwendet werden; andere Formatierungen (wie etwa das `<strong>`-Element) reichen nicht. Stellen Sie sicher, dass eine Seite stets über eine Überschrift erster Ebene (`<h1>`) verfügt und dass diese den Hauptinhalt benennt; es dürfen daneben durchaus weitere `<h1>`-Elemente existieren, sofern dies nicht durch andere Anforderungen (z.B. Suchmaschinenoptimierung) ausgeschlossen wird.

Die erste Überschrift einer Seite muss nicht unbedingt eine `<h1>` sein: oft starten Überschriften vor dem Haupt-Inhalt auf einer tieferen Ebene, damit die `<h1>` des Haupt-Inhalts für sich alleine steht.

Überschriften sind im DOM generell das erste Element eines Inhaltsblocks. Sie benötigen immer einen nachfolgenden Inhalt (etwa Text, Listen, Tabellen, o.ä.) und sollen diesen prägnant beschreiben, siehe auch [📜-2.4.6 Überschriften und Beschriftungen (Labels)](/de/wcag/2.4.6-ueberschriften-und-beschriftungen-labels).

**Hinweis:** Taucht eine Gruppe von verlinkten Überschriften ohne nachfolgenden Inhalt auf, dann wird besser eine Auflistung (z.B. `<ul>`) verwendet, siehe auch [📜-1.3.1b Aufzählungen und Listen](/de/wcag/1.3.1b-aufzaehlungen-und-listen) sowie [✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}.

**Wichtig:** Der HTML 5 Outline Algorithmus wird von assistierenden Technologien nicht unterstützt und gilt seit HTML 5.2 als obsolet.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass vorhandene Überschriften **semantisch und hierarchisch korrekt umgesetzt** sind.
- Dass solche überhaupt **vorhanden** sind, ist nicht immer erforderlich (Überschriften sind aber meistens die beste Technik, um Inhalte zu benennen und voneinander abzugrenzen).
- Dass sie **aussagekräftig** sind, wird von [📜-2.4.6 Überschriften und Beschriftungen (Labels)](/de/wcag/2.4.6-ueberschriften-und-beschriftungen-labels) gefordert.

### Verantwortlichkeiten

- Das Designteam definiert für die Seitenbereiche und Funktionalitäten sinnvolle, hierarchisch korrekte (und ggf. auch visuell versteckte) Überschriften.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um. Es schafft zudem die notwendigen technischen Voraussetzungen für die Inhaltserstellung, etwa die Möglichkeit zum Wählen verschiedener Überschriftenebenen als Formatvorlagen in einem WYSIWYG-Editor.
- Die Inhaltsverantwortlichen versehen die erstellten Inhalte mit aussagekräftigen und hierarchisch korrekten Überschriften.

## Beispiele

```html
<style>
/* Schiebt das Element aus dem sichtbaren Bereich des Bildschirms, ohne es tatsächlich zu entfernen */
.visually-hidden {
  position: absolute;
  left: -10000px;
  width: 1px;
  height: 1px;
  overflow: hidden;
}
</style>

<header>
  <h1 class="visually-hidden">Kopfzeile</h1><!-- Visuell versteckt -->

  <p>John Doe's Web Präsenz</p>
</header>
<nav>
  <h1 class="visually-hidden">Navigation</h1>

  <ul>
    <li><a href="...">Startseite</a></li>
    <li><a href="...">Hobbys</a></li>
    <li><a href="...">Über</a></li>
    <li><a href="...">Etc.</a></li>
  </ul>
</nav>
<main>
  <h1>Meine Hobbys</h1><!-- Normale Überschrift -->

  <h2>Körperliche Aktivitäten</h2>

  <h3>Fussball Spielen</h3>
  <p>Fussball ist ein Sport, der zwischen zwei Teams von elf Spielenden mit einem kugelförmigen Ball gespielt wird.</p>

  <h3>Tanzen</h3>
  <p>Der Tanz ist eine darstellende Kunstform, die aus gezielt ausgewählten Sequenzen menschlicher Bewegung besteht.</p>

  <h2>Entspannung</h2>

  <h3>Filme Kucken</h3>
  <p>Ein Film ist eine Serie von Standbildern, die aufgrund des Phi-Phänomens die Illusion von bewegten Bildern erzeugt.</p>
</main>
<footer>
  <h1 class="visually-hidden">Fusszeile</h1>
  <p>Copyright 2057 John Doe</p>
</footer>
```

## ✅ Checkpoints

- [✅ Hierarchie existierender Überschriften](hierarchie-existierender-ueberschriften)
- [✅ Sprünge zwischen Überschriften-Ebenen](spruenge-zwischen-ueberschriften-ebenen)
- [✅ Eigene Überschrift](eigene-ueberschrift)
- [✅ Nachfolgender Inhalt](nachfolgender-inhalt)
- [✅ Überschriften vor zugehörigen Inhalten](ueberschriften-vor-zugehoerigen-inhalten)
- [✅ Überschriften für Akkordeons](ueberschriften-fuer-akkordeons)
- [✅ Überschriften semantisch korrekt](ueberschriften-semantisch-korrekt)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#info-and-relationships>
- <https://www.w3.org/WAI/WCAG22/quickref/#info-and-relationships>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H42>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G141>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA12>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF9>

### Weiteres

- Überschriften müssen vor Inhalt platziert sein: <https://adrianroselli.com/2020/02/block-links-cards-clickable-regions-etc.html#Order>
- <https://wcag.com/developers/1-3-1-info-and-relationships/>
- <https://www.wuhcag.com/info-and-relationships/>
- <https://www.digitala11y.com/understanding-sc-1-3-1-info-and-relationship/>
