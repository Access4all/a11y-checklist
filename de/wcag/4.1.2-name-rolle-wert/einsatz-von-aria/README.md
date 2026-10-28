---
id: "109"
wcag_criterion_id: "61"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
applicable_to_web: "true"
applicable_to_mobile: "true"
applicable_to_pdf: "false"
blind_testable: "true"
created_at: "2024-03-15 14:18:08"
---

# ✅ Einsatz von ARIA

WCAG-Kriterium: [📜 4.1.2 Name, Rolle, Wert - A](..)

## Beschreibung

Der Einsatz von ARIA ist sinnvoll und korrekt. Wenn immer möglich werden Standard-HTML-Elemente verwendet; ARIA wird eingesetzt, wenn kein entsprechendes HTML-Element existiert oder weil eine technische Notwendigkeit dafür besteht.

## Prüfmethode (in Kürze)

**Screenreader:** Mit JavaScript-Widgets interagieren und sicherstellen, dass sie sich wie erwartet verhalten.

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

Für die Umsetzung von konkreten Elementen gibt es eine Fülle spezifischer Prüfpunkte:

- Für **Inhalts-Elementen** siehe [📜-1.3.1 Info und Beziehungen](/de/wcag/1.3.1-info-und-beziehungen)
- Für **interaktive Elemente**, also JavaScript-Widgets, siehe [📜-4.1.2a Erweiterte Steuerelemente (Widgets)](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets)

Jedoch gelingt es nicht immer, ein geprüftes Element genau einem solchen Prüfpunkt zuzuordnen. Deshalb existiert der vorliegende Prüfpunkt: er ist eine Art Sammelbecken für Probleme mit weiteren Elementen, welche vermutlich auf mangelhaften oder unnötigen Einsatz von ARIA zurück zu führen sind.

Über solche Probleme "stolpert" man normalerweise beim Durchführen anderer Prüfpunkte. Entsprechend werden hier keine konkreten Prüf-Schritte bereit gestellt, sondern lediglich Beispiele:

- **🙂 Beispiel:** Webseiten verwenden Standard-HTML für Inhalts-Elemente, z.B. `<table>`, `<tr>`, `<td>` etc. für Tabellen
    - **🙄 Beispiel:** Es wird stattdessen **robuster** ARIA-Code verwendet, z.B. `<div role="table">` etc. → ⚠️ Dies ist technisch erlaubt, aber dennoch raten wir stets eindringlich zu Standard-HTML!
    - **🙄 Beispiel:** Es wird stattdessen **redundanter** ARIA-Code verwendet, z.B. `<table role="table">` → ⚠️ Dito
    - **😡 Beispiel:** Es wird stattdessen **problematischer** (exotischer, unnötig komplizierter, sich widersprechender...) ARIA-Code verwendet, z.B. `<table role="heading" aria-pressed="true">`
- **🙂 Beispiel:** Webseiten verwenden Standard-HTML für interaktive Elemente, z.B. `<input type="checkbox">`
    - **🙄 Beispiel:** Es wird stattdessen **robuster** ARIA-Code verwendet, z.B. `<div role="checkbox">` etc. → ⚠️ Siehe oben
    - **🙄 Beispiel:** Es wird stattdessen **redundanter** ARIA-Code verwendet, z.B. `<input type="checkbox" role="checkbox">` → ⚠️ Siehe oben
    - **😡 Beispiel:** Es wird stattdessen problematischer (exotischer, unnötig komplizierter, sich widersprechender...) ARIA-Code verwendet, z.B. `<select role="checkbox" aria-level="1">`

⚠️ ARIA kann je nach Anwendungsfall also absolut angebracht sein! Gewisse Ansprüche an moderne Web-Applikationen können nur mittels ARIA umgesetzt werden; der entsprechende Code muss dann aber sehr sauber sein, um zuverlässig in Screenreadern zu funktionieren. Ist er dies nicht, kann es schnell zu Problemen führen.

Es soll hier also nicht darum gehen, ARIA per se zu verteufeln, aber wir testen es besonders aufmerksam und weisen stets darauf hin, es mit Bedacht einzusetzen: nämlich möglichst nur dann, wenn kein entsprechendes Standard-HTML-Element existiert!

## Prüfmethode für Mobile (Ergänzungen zu Web)

Nur auf Web-Views 1:1 übertragbar. Bei nativen Apps gibt es (glaubs) kein mit ARIA vergleichbares Konzept.

## Prüfmethode für PDF (Ergänzungen zu Web)

Für PDF nicht anwendbar.

## Details zum blinden Testen

Teilweise: manchmal merkt man, dass ein Element sich nicht korrekt/sinnvoll verhält mit Screenreader, aber es ist oft schwierig, den Grund dafür herauszufinden.

## Screenshots typischer Fälle

Keine Screenshots verfügbar.
