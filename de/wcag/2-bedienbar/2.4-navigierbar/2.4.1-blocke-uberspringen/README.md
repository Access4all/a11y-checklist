---
id: "33"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/bypass-blocks.html"
created_at: "2015-08-04 14:36:00"
---

# 2.4.1 Blöcke überspringen - A

## Verstehen (in Kürze)

Sich auf jeder Seite **wiederholende Elemente** (etwa der Kopfbereich) müssen **übersprungen werden** können (etwa mit einem Link "Zum Inhalt springen"). Dies ermöglicht die sofortige Interaktion mit dem Inhalt der Seite, ohne dass zuvor langwierig dahin navigiert werden muss.

## Verstehen (ausführlich)

Verschiedene Benutzergruppen sind auf Bedienungshilfen angewiesen zur Navigation auf Webseiten mit umfangreichem Inhalt. Eine Tastaturnutzerin etwa benötigt am Anfang jeder Seite einen Sprunglink "Zum Inhalt springen", um nicht nach jedem Neuladen durch die ganzen Elemente davor (Kopfbereich, Navigation, Breadcrumbs, usw.) tabben zu müssen. Dieser Link kann visuell versteckt und nur bei Fokus eingeblendet werden.

Techniken, um das Überspringen solcher Elemente für bestimmte assistierende Technologien weiter zu vereinfachen, sind gut strukturierte Überschriften (siehe 📜-1.3.1a) sowie `accesskey`-Attribute. Sprunglinks und Accesskeys werden idealerweise miteinander kombiniert.

**Tipp:** Ein einzelner Sprunglink zum Inhalt reicht zur Erfüllung dieses Erfolgskriteriums.

### Verantwortlichkeiten

- Das Designteam definiert ein visuelles Design für Sprunglinks.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

## Beispiele

```html
<style>
  /* Schiebt die Links aus dem sichtbaren Bereich des Bildschirms, ohne sie tatsächlich zu entfernen */
  .skip-links a {
    position: absolute;
    left: -10000px;
    width: 1px;
    height: 1px;
    overflow: hidden;
  }

  /* Setzt bei Fokus die Position der Links zurück */
  .skip-links a:focus {
    left: 0;
    top: 0;
    width: auto;
    height: auto;
  }
</style>

<!-- Typische Sprunglinks -->
<body>
  <ul class="skip-links">
   <li><a href="#content" accesskey="1">Inhalt</a></li><!-- Sprunglink zum Inhalt -->
   <li><a href="#menu" accesskey="2">Navigation</a></li><!-- Weiterer Sprunglink (innerhalb der Seite, optional) -->
   <li><a href="contact.html" accesskey="5">Suche</a></li><!-- Link (zu einer eigenen Seite, optional) -->
  </ul>

  <nav id="menu"></nav>
    <!-- Navigation -->
  </nav>
  <main id="content">
    <!-- Inhalt -->
  </main>
</body>

<!-- Ausklappbare Elemente -->
<nav id="main-nav">
  <ul>
    <li><a href="...">Startseite</a></li>
    <li>
      <a href="...">Produkte</a><!-- Am besten nicht automatisch öffnen bei Fokus! -->
      <ul>
        <li><a href="...">Telefone</a></li>
        <li><a href="...">Computer</a></li>
        <li><a href="...">Anderes</a></li>
      </ul>
    </li>
    <li>
      <a href="...">Dienstleistungen</a><!-- Ebenfalls -->
      <ul>
        <!-- Viele weitere Sub-Menü-Einträge -->
      </ul>
    </li>
  </ul>
</nav>
```

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#bypass-blocks>
- <https://www.w3.org/WAI/WCAG22/quickref/#bypass-blocks>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G1>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G123>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G124>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA11>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H69>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF9>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H64>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR28>

## Referenzen (intern)

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-1-bereiche-ueberspringbar>

### Weiteres
- <https://www.wcag.com/developers/2-4-1-bypass-blocks/>
- <https://www.wuhcag.com/bypass-blocks/>
- <https://www.digitala11y.com/understanding-sc-2-4-1-bypass-blocks/>
- <https://www.boia.org/wcag2/cp/2.4.1>