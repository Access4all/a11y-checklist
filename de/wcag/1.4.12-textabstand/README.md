---
id: "93"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/text-spacing.html"
created_at: "2019-11-10 20:20:34"
---

# 📜 1.4.12 Textabstand - AA

## Verstehen (in Kürze)

**Abstandsanpassungen für Text** müssen möglich sein, ohne dass Inhalt oder Funktionalität verloren gehen. Dies ermöglicht es Menschen mit Sehbehinderungen oder kognitiven Behinderungen, die Lesbarkeit von Texten zu verbessern (etwa mittels eigenem CSS).

## Verstehen (ausführlich)

Menschen mit Sehbehinderungen und kognitiven Behinderungen sind darauf angewiesen, die Lesbarkeit von Texten für sich verbessern zu können, indem sie Werkzeuge wie eigene Bookmarklets oder Stylesheets auf eine Webseite anwenden.

Bei Textinhalten müssen die Abstände von Zeilen, Absätzen, Wörtern und Buchstaben auf die folgenden Werte anpassbar sein (oder diese Werte bereits aufweisen), ohne dass Funktionalitäten oder Inhalte durch Darstellungsprobleme verloren gehen (z.B. Überlappungen von Text, abgeschnittener Text, nicht mehr angezeigter Text). Wichtig dabei:

- Linienhöhe (`line-spacing`) ist zu mindestens dem `1.5`-fachen der Schriftgrösse (`font-size`) veränderbar.
- Abstand nach Absätzen (`margin`) ist zu mindestens dem `2`-fachen der Schriftgrösse veränderbar.
- Wortabstand (`word-spacing`) ist zu mindestens dem `0.16`-fachen der Schriftgrösse veränderbar.
- Zeichenabstand (`letter-spacing`) ist zu mindestens dem `0.12`-fachen der Schriftgrösse veränderbar.

**Hinweis:** Das gilt nur für "echten" Text; Texte auf Grafiken sind nicht betroffen. Für Anforderungen in Bezug auf Bilder eines Textes, beachten Sie [📜-1.4.5 Bilder von Text](/de/wcag/1.4.5-bilder-von-text).

**Wichtig:** Die Anforderung verlangt nicht, dass die genannten Änderungsmöglichkeiten in der Programmierung umgesetzt werden (etwa durch einen Style-Switcher). Sie verlangt lediglich, dass nachträglich im Browser vorgenommene Anpassungen nicht zum Abschneiden bzw. Überlappen von Text oder Verlust von Funktionalitäten führt.

**Tipp:** Automatische Silbentrennung (etwa mittels `white-space`) kann zusätzlich Abhilfe schaffen.

**Ausnahmen:** Video-Untertitel und PDF.

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass die Abstände zwischen Zeilen, Wörtern, Buchstaben und nach Absätzen auf die definierten Abstände angepasst werden können.

## Beispiele

Die Abstände werden mithilfe von eigenen Bookmarklets oder Stylesheets vergrössert. Es entstehen dabei keine Inhalte oder Funktionalitäten verloren.

## ✅ Checkpoints

- [✅ Abstände vergrösserbar](abstaende-vergroesserbar)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#text-spacing>
- <https://www.w3.org/WAI/WCAG22/quickref/#text-spacing>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C36>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C35>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C8>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C21>
- <https://www.w3.org/WAI/WCAG22/Techniques/css/C28>

### Weiteres
- <https://www.wcag.com/designers/1-4-12-text-spacing/>
- <https://www.digitala11y.com/understanding-sc-1-4-12-text-spacing/>
- <https://www.boia.org/wcag2/cp/1.4.12>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-4-distinguishable-level-aa-and-aaa/#Success_Criterion_1412_Text_Spacing>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-12-textabstand/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-12-textabstaende-anpassbar>
