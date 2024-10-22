---
id: "63"
wcag_criterion_id: "23"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 07:55:43"
---

# Prüfpunkt: Mit der Tastatur bedienbar

## Beschreibung

Inhalte/Funktionalitäten (Seitenfunktionalitäten, Seitenelemente, Formularfelder, Kontrollelemente, Schalter, Links, Dialoge, Multimedia-Steuerungen, etc.) sind mit der Tastatur alleine (d.h. ohne Zeigegerät) erreichbar und können erwartungsgemäss bedient werden.

## Prüfmethode (in Kürze)

**Tastatur:** Durch Elemente navigieren mittels `Tab`-Taste, mit ihnen interagieren und darauf achten, dass sie sich erwartungsgemäss verhalten: Aktivieren mittels `Enter`- oder `Leer`-Taste, weitere Interaktions-Möglichkeiten oftmals mittels `Pfeil`-Tasten.

## Prüfmethode für Web (ausführlich)

### Test-Schritte

1. Seite öffnen
1. Mit `Tab`-Taste durch die Seite navigieren und jeweils prüfen:
    - Sind alle interaktiven Elemente fokussierbar?
        - **🙂 Beispiel:** Alle nativen interaktiven HTML-Elemente sind von Natur aus fokussierbar (z.B. `<button>` oder `<a href>`).
        - **😡 Beispiel:** Ein custom Link oder Schalter (`<span onclick>`) ist nicht fokussierbar.
        - **🙄 Beispiel:** Ein custom Link oder Schalter (`<span onclick tabindex="0">`) ist fokussierbar.
            - ⚠️ Es sollten aber besser native HTML-Elemente eingesetzt werden!
        - **😡 Beispiel:** Ein JavaScript-Widget ist ggf. nicht fokussierbar.
    - Falls Fokus schlecht (oder gar nicht) sichtbar → **🏷️-22 NerdeFocus Extension** aktivieren
1. Sicherstellen, dass alle interaktiven Elemente mit Tastatur alleine bedienbar sind:
    - Links und Schalter mit `Enter`-Taste aktivierbar?
        - **🙂 Beispiel:** Alle nativen interaktiven HTML-Elemente sind von Natur aus aktivierbar (z.B. `<button>` oder `<a href>`).
        - **😡 Beispiel:** Ein custom Link oder Schalter (`<span onclick>`) ist ggf. nicht aktivierbar.
        - **😡 Beispiel:** Ein JavaScript-Widget ist ggf. nicht aktivierbar.
    - Alle Formular-Elemente erwartungsgemäss bedienbar?
        - **🙂 Beispiel:** Alle nativen Formular-Elemente sind von Natur aus bedienbar (z.B. mit `Hoch`/`Runter` kann Wert gewählt werden in einem `<select>` oder in einer Gruppe von Radiobuttons, mit `Leer` können Checkboxen an-/abgewählt werden).
        - **😡 Beispiel:** Die custom Implementation einer Checkbox kann weder mit `Enter` noch `Leer`
an-/abgewählt werden.
        - **😡 Beispiel:** Die custom Implementation einer ausklappbaren Liste von Werten kann mit `Hoch`/`Runter` nicht bedient werden.
    - JavaScript-Widgets erwartungsgemäss steuerbar?
        - Für Tastatur-Bedienung geläufiger JavaScript-Widgets siehe:
            - Akkordeons: **✅-100 Akkordeons**
            - Autocompletes: **✅-101 Autocompletes (Comboboxen)**
            - Datepicker: **✅-102 Datepicker / Timepicker**
            - Dialoge: **✅-103 Dialoge**
            - Aufklapp-Elemente (Dropdowns): **✅-104 Dropdowns (Aufklapp-Elemente)**
            - Karusselle: **✅-105 Karusselle**
            - Tabs: **✅-106 Tabs / Tablisten**
            - Tooltips: **✅-107 Tooltips / Toggletips**
            - Cards: [✅-112 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}
            - Weitere JavaScript-Widgets: [✅-108 ⚠️](javascript: alert('Wie gesagt: Verlinkung fehlgeschlagen... 🙄 Wahrscheinlich hast du eine falsche oder veraltete ID verwendet?')){title='Verlinkung fehlgeschlagen!'}

### Verwandte Prüfpunkte

- Bei Tastatur-Fallen: **✅-66 Tastaturfallen**
- Bei mangelhafter Fokus-Reihenfolge: **✅-73 Fokus-Reihenfolge**
- Bei mangelhafter Fokus-Führung: **✅-74 Fokus-Führung**
- Wenn Tastatur-Fokus nicht sichtbar: **✅-81 Tastatur-Fokus sichtbar**

## Screenshots typischer Fälle

### Element nicht fokussierbar

![Nicht fokussierbares Hamburger-Menü auf Watson](images/nicht-fokussierbares-hamburger-men-auf-watson.png)

Das Element zum Ausklappen des Hamburger-Menüs kann nicht fokussiert werden.