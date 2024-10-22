---
id: "23"
parent_id: "68"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/keyboard.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.1.1 Tastatur - A

## Verstehen (in Kürze)

**Inhalte und Funktionalitäten** müssen **mit der Tastatur alleine erreicht und bedient** werden können. Dies ermöglicht es Menschen, die keine Zeigegeräte (etwa Maus oder Touchscreen) bedienen können, sämtliche Inhalte erreichen und alle Funktionen nutzen zu können.

## Verstehen (ausführlich)

Körperlich eingeschränkte Menschen können oft keine Maus oder ähnliche Zeigegeräte bedienen und sind auf die Tastatur angewiesen. Auch assistierende Eingabegeräte verwenden dieselbe als Schnittstelle. Es ist deshalb erforderlich, dass alle interaktiven Elemente einer Seite auch allein mit einer Tastatur erreicht und bedient werden können. Dies betrifft insbesondere Links, Schalter und Formular-Elemente; für JavaScript-Widgets unterschiedlichster Art finden Sie weitere Hinweise (inkl. Bedienung) unter **📜-4.1.2a Erweiterte Steuerelemente (Widgets)**.

Beachten Sie insbesondere folgendes:

- Stellen Sie sicher, dass der Fokus stets gut sichtbar ist (siehe **📜-2.4.7 Fokus sichtbar** und **📜-2.4.11 Fokus nicht verdeckt (Minimum)**).
- Verwenden Sie am besten JavaScript-Events, welche auch durch die Tastatur ausgelöst werden (etwa `click`, aber nicht `hover`).
- Achten Sie auf die Reihenfolge der interaktiven Elemente und führen Sie den Fokus sinnvoll (siehe **📜-2.4.3 Fokus-Reihenfolge** und **📜-1.3.2 Bedeutungsvolle Reihenfolge**).
- Schränken Sie die Bewegungs-Freiheit des Fokus nicht unnötig ein (siehe **📜-2.1.2 Keine Tastaturfalle**).
- Ändern Sie den Kontext nicht automatisch bei Fokus oder Eingabe (siehe **📜-3.2.1 Bei Fokus** und **📜-3.2.2 Bei Eingabe**).
- Bieten Sie Alternativen an für pfadbasierte oder Mehrpunkt-Zeigergesten (siehe **📜-2.5.1 Zeigergesten**) sowie Ziehbewegung (Drag & Drop, siehe **📜-2.5.7 Ziehende Bewegungen**), da diese von einem Zeigegerät (z.B. Maus) abhängig sind.

### Standard-HTML vs. JavaScript-Widgets

Wir empfehlen, wenn möglich Standard-HTML-Elemente einzusetzen, also JavaScript-Widgets nur dann zu verwenden, wenn HTML keine entsprechende Funktionalität anbietet. Entsprechend ist ein `<button>` einem `<div tabindex="0" onclick="...">` vorzuziehen; dasselbe gilt z.B. für ein `<select>` anstelle eines JavaScript-Dropdowns.

Beachten Sie diesbezüglich unbedingt auch die Hinweise in **📜-4.1.2a Erweiterte Steuerelemente (Widgets)**!

### Verantwortlichkeiten

- Das Designteam definiert JavaScript-Widgets mit dem Augenmerk auf Einfachheit und Bedienbarkeit mittels Tastatur.
- Das Entwicklungsteam setzt die vom Designteam definierten Vorgaben korrekt um. Werden JavaScript-Widget-Bibliotheken verwendet, so werden diese erst eingehend auf Zugänglichkeit hin untersucht.
- Auftraggebende sollten sich bewusst sein, dass die Umsetzung von zugänglichen JavaScript-Widgets Zusatzaufwand bedeuten kann.

## Beispiele

```html
<!-- HTML-Schalter: gut -->
<button>Abschicken</button>

<!-- Custom Schalter: schlecht -->
<span onclick="...">Abschicken</span>

<!-- Nicht durch Tastatur auslösbarer Event: schlecht -->
<span onhover="...">Tooltip anzeigen</span>
```

## ✅ Checkpoints

- [✅ Mit der Tastatur bedienbar](mit-der-tastatur-bedienbar)

## Referenzen (öffentlich)

### WCAG-Varianten

- <https://www.w3.org/TR/WCAG22/#keyboard>
- <https://www.w3.org/WAI/WCAG22/quickref/#keyboard>

### Techniken

- <https://www.w3.org/WAI/WCAG21/Techniques/html/H91>
- <https://www.w3.org/WAI/WCAG21/Techniques/general/G202>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF11>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF13>
- <https://www.w3.org/WAI/WCAG21/Techniques/pdf/PDF23>

## Referenzen (intern)

### BITV

- <https://www.bit-inklusiv.de/bitv-softwaretest/> → keine spezifischen Infos für dieses EK!
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-4-2-sinnvolle-dokumenttitel>

### Weiteres

- <https://www.wuhcag.com/page-titled/>
- <https://wcag.com/developers/2-1-1-keyboard/>
- <https://www.digitala11y.com/understanding-sc-2-1-1-keyboard/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/2-1-keyboard-accessible-level-a/#Guideline_21_Keyboard_Accessible>
- <https://webaim.org/techniques/keyboard/#testing>