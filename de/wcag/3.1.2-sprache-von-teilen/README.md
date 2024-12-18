---
id: "44"
parent_id: "73"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/language-of-parts.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 3.1.2 Sprache von Teilen - AA

## Verstehen (in Kürze)

**Sprachwechsel** (etwa ein englisches Zitat auf einer ansonsten deutschsprachigen Seite) müssen über eine **korrekte Sprachdeklaration** (`lang`-Attribut) verfügen. Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), diese Inhalte ebenfalls mit korrekter Aussprache vorzulesen.

## Verstehen (ausführlich)

In längeren Textpassagen müssen Sprachwechsel angegeben sein. Ansonsten lesen Screenreader Inhalte in anderer Sprache als der Seitensprache mit falscher Betonung vor, was dazu führt, dass die Inhalte unverständlich werden. Ist die Seitensprache z.B. Deutsch (`<html lang="de">`) und es existiert ein Zitat in englischer Sprache, so muss dieses Zitat entsprechend ausgezeichnet sein (`<blockquote lang="en">`).

**Hinweis:** Vermeiden Sie einen Sprachwechsel bei einzelnen wenigen Wörtern oder z.B. Anglizismen, da Screenreader jeweils mit etwas Verzögerung reagieren, und entsprechend die schnellere, wenn auch falsche Aussprache einzelner Wörter oft bevorzugt wird.

### Verantwortlichkeiten

- Das Entwicklungsteam schafft die notwendigen technischen Voraussetzungen, etwa eine Funktion zum Deklarieren einer fremdsprachigen Textpassage in einem WYSIWYG-Editor.
- Die Inhaltsverantwortlichen erstellen und warten die entsprechenden Inhalte anforderungsgemäss.

## Beispiele

```html
<html lang="de"><!-- Deutsch ist Hauptsprache -->
  <body>
    <h1>Meine liebsten Songs</h1><!-- Song ist ein Anglizismus -->

    <p>
      <!-- "All time Favourites" ist zu kurz, damit ein Sprachwechseln angebracht wäre -->
      Im folgenden einige meiner all time Favourites:
    </p>

    <ul>
      <li>Griechischer Wein (Udo Jürgens)</li>
      <li lang="en">Yellow submarine (The Beates)</li><!-- Sprachwechsel zu Englisch -->
      <li lang="fr">Nathalie (Gilbert Bécaud)</li><!-- Sprachwechsel zu Französisch -->
      <li lang="de-ch">S Zundhölzli (Mani Matter)</li><!-- Sprachwechsel zu Schweizerdeutsch -->
    </ul>
  </body>
</html>
```

## ✅ Checkpoints

- [✅ Sprachwechsel](sprachwechsel)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#language-of-parts>
- <https://www.w3.org/WAI/WCAG22/quickref/#language-of-parts>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H58>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF19>

## Referenzen (intern)

### BITV
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-1-2-anderssprachige-woerter-und-abschnitte-ausgezeichnet>

### Weiteres
- <https://www.wcag.com/developers/3-1-2-language-of-parts/>
- <https://www.digitala11y.com/understanding-sc-3-1-2-language-of-parts/>
- <https://www.boia.org/wcag2/cp/3.1.2>
