---
id: "43"
parent_id: "73"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/language-of-page.html"
created_at: "2015-08-04 14:36:00"
---

# 3.1.1 Sprache der Seite - A

## Verstehen (in Kürze)

**Webseiten** müssen über eine **korrekte Sprachdeklaration** (`lang`-Attribut) verfügen. Dies ermöglicht es assistierenden Geräten (z.B. Screenreadern), Inhalte mit korrekter Aussprache vorzulesen.

## Verstehen (ausführlich)

Die korrekte Deklaration der Hauptsprache einer Webseite ist sehr wichtig. Andernfalls würde ein Screenreader etwa eine deutschsprachige Webseite in Englisch vorlesen, wodurch die Inhalte weitgehend unverständlich werden. Definieren Sie deshalb die korrekte Hauptsprache gemäss der jeweiligen Sprachversion.

Das `lang`-Attribut benötigt einen ISO-Sprachcode als Wert. Normalerweise ist dies ein aus zwei Buchstaben bestehender Code wie "en" für Englisch (`<html lang="en">`), aber es kann auch ein erweiterter Code wie "en-gb" für britisches Englisch (`<html lang="en-gb">`) sein. Falls der Webauftritt mehrere Sprachen anbietet, dann aktualisieren Sie das `lang`-Attribut beim Sprachwechsel entsprechend.

### Verantwortlichkeiten

- Das Entwicklungsteam setzt die korrekte Deklaration für die jeweilige Sprache.

## Checkpoints

- [Sprachdeklaration](sprachdeklaration)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#language-of-page>
- <https://www.w3.org/WAI/WCAG22/quickref/#language-of-page>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H57>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF16>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF19>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/3-1-1-sprache-der-software/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-1-1-hauptsprache-angegeben>

### Weiteres
- <https://www.wcag.com/developers/3-1-1-language-of-a-page/>
- <https://www.wuhcag.com/language-of-page/>
- <https://www.digitala11y.com/understanding-sc-3-1-1-language-of-page/>
- <https://www.boia.org/wcag2/cp/3.1.1>