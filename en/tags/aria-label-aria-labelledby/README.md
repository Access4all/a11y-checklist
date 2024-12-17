---
id: "15"
parent_id: "59"
created_at: "2024-03-09 12:35:48"
---

# 🏷️ aria-label, aria-labelledby

## Description

Damit kann man den zugänglichen Namen eines Elements überschreiben. Der zugängliche Name eines Elements ist das, was der Screenreader ausgibt, wenn er das Element vorliest.

Normalerweise ergibt sich der zugängliche Name aus dem nativen HTML-Inhalt, z.B.:

```html
<p>Hallo!</p><!-- Zugänglicher Name: "Hallo!" -->

<a href="#">Mehr Info</a><!-- "Mehr Info" -->

<img src="..." alt="Profilfoto"><!-- "Profilfoto" -->

<label for="first-name">Vorname</label><!-- "Vorname" -->
<input id="first-name"><!-- "Vorname" -->
```

Manchmal möchte man den zugänglichen Namen verändern. Dies kann man mittels `aria-label` tun:

```html
<p aria-label="Tschüss">Hallo!</p><!-- Zugänglicher Name: "Tschüss" -->

<a href="#" aria-label="Oder auch nicht">Mehr Info</a><!-- "Oder auch nicht" -->

<img src="..." alt="Profilfoto" aria-label="Selfie"><!-- "Selfie" -->

<label for="first-name">Vorname</label><!-- "Vorname" -->
<input id="first-name" aria-label="Papperlapapp"><!-- "Papperlapapp" -->
```

Damit sagt der Screenreader nun also etwas anderes an, als visuell zu sehen ist. Dies widerspricht dem Prinzip, dass alle Nutzenden möglichst dasselbe Nutzer-Erlebnis haben sollen (siehe [🏷️ Alle Nutzer haben möglichst dasselbe Erlebnis!](/en/tags/alle-nutzer-haben-moglichst-dasselbe-erlebnis)). Deshalb darf man das nur in gut begründeten Fällen tun.

## Videos

- [🎬 Schalter ohne Namen - EWB](/en/videos/schalter-ohne-namen-ewb)