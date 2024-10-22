---
id: "56"
parent_id: "75"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/error-suggestion.html"
created_at: "2015-08-04 14:36:00"
---

# 3.3.3 Vorschlag bei Fehler - AA

## Verstehen (in Kürze)

**Fehlermeldungen bei Formulareingaben** müssen **aussagekräftig** sein und (wenn möglich) **Hilfestellung** zu deren Behebung bieten. Dies ermöglicht die zielgerichtete Korrektur von Eingabefehlern, was vor allem Menschen mit kognitiven Behinderungen zugutekommt.

## Verstehen (ausführlich)

Sofern Fehler automatisch erkannt werden und spezifische Fehlermeldungen möglich sind (z.B. über unausgefüllte Pflichtfelder, nicht eingehaltene Format-Vorgaben, etc.), dann müssen Fehlermeldungen spezifisch und informativ sein.

Verwenden Sie sinngemäss die in **📜-3.3.1 Fehlerkennzeichnung** vorgestellten Techniken rund um `<label>`-Element und `aria-describedby`-Attribut.

Nennen Sie ggf. konkrete Beispiele, wie ein Feld auszufüllen ist. Dies hilft, die Fehler zielgerichtet zu korrigieren. Allgemein gehaltene Fehlermeldungen wie z.B. "Es ist ein Fehler aufgetreten." sind nicht zulässig, sofern die Ursache des Fehlers bekannt ist.

Einige Beispiele für aussagekräftige Meldungen sind:

- "Das Passwort muss aus mindestens 8 Zeichen bestehen"
- "Das Passwort muss Sonderzeichen enthalten, etwa $, @ oder +"
- "Das Datum muss im Format DD.MM.YYYY eingegeben werden, z.B. 24.11.2020"
- "Das Login ist ungültig, bitte überprüfen Sie Benutzer und Passwort"
- "Bitte füllen Sie dieses Feld aus"
- "Das Formular konnte aus technischen Gründen nicht verarbeitet werden, bitte versuchen Sie es später noch einmal"

Vermeiden Sie allgemeine Sammelmeldungen wie etwa "Passwörter müssen 8 Zeichen lang sein, Gross- und Kleinbuchstaben und Sonderzeichen beinhalten", da hier ggf. nicht klar wird, welche der Hinweise tatsächlich einer Korrektur der Eingabe bedürfen. Seien Sie stattdessen spezifisch und geben Sie für jeden gefunden Fehler eine eigene Meldung aus.

**Hinweis:** Empfohlen wird die Bereitstellung von Fehlermeldungen direkt bei jedem betroffenen Formularfeld, damit die Zuordnungen unmittelbar verständlich sind. Es ist aber auch möglich, alle Fehlermeldungen zuoberst beim Formular als Liste anzuzeigen; im Optimalfall ist dann jede Fehlermeldung als Anker-Link zum entsprechenden Eingabefeld umgesetzt. Zur Handhabung von Formularen generell siehe auch **📜-1.3.1c Formular-Beziehungen**.

### Verantwortlichkeiten

- Das Designteam definiert aussagekräftige Fehlermeldungen und entsprechende Hilfestellungen.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass vorhandene Fehlermeldungen **aussagekräftig** (also hilfreich bei der Fehlerbehebung) sind.
- Dass Fehler auf unterschiedlichen Wahrnehmungs-Kanälen **erfahrbar** sowie die zugehörigen Eingabefelder **identifizierbar** sind, wird von **📜-3.3.1 Fehlerkennzeichnung** gefordert.

## Beispiele

Siehe **📜-3.3.1 Fehlerkennzeichnung** bzw. **📜-3.3.2 Beschriftungen (Labels) oder Anweisungen**.

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#error-suggestion>
- <https://www.w3.org/WAI/WCAG22/quickref/#error-suggestion>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/pdf/PDF22>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA18>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G177>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G139>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/3-3-3-fehlerbehebung/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-3-3-3-hilfe-bei-fehlern>

### Weiteres
- <https://www.wcag.com/designers/3-3-3-error-suggestion/>
- <https://www.digitala11y.com/understanding-sc-3-3-3-error-suggestion/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/3-3-input-assistance-level-aa-and-aaa/#Success_Criterion_333_Error_Suggestion>