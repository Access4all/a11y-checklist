---
applicable_to_web: "true"
applicable_to_mobile: "false"
applicable_to_pdf: "true"
blind_testable: "true"
created_at: "2024-03-15 13:51:00"
video_ids: "[]"
---

# ✅ Aussagekräftiger Titel

WCAG-Kriterium: [📜 2.4.2 Seite mit Titel - A](..)

## Beschreibung

Seiten haben einen eindeutigen, aussagekräftigen Titel, der Thema oder Zweck der Seite sowie den Betreiber enthält (Muster: "Thema/Zweck der Seite - Seitenbetreiberin")

## Prüfmethode (in Kürze)

**Manuelle Prüfung:** Seiten durchsehen und darauf achten, dass deren Titel den Erwarungen entsprechen: Thema/Zweck vorhanden? Betreiberin vorhanden?

## Prüfmethode für Web (ausführlich)

### Prüf-Schritte

1. Startseite öffnen
1. Ihren Titel ermitteln:
    - Chrome zeigt den Titel im Tab an (ggf. mit Maus drüber hovern, falls Titel abgeschnitten)
        - Alternativ kann via [🏷️ DOM Inspektor](/de/tags/dom-inspektor) im `<head>` das `<title>`-Attribut untersucht werden
2. Sicherstellen, dass der Titel den Erwartungen entspricht:
    - Hauptthema vorhanden? Name des Betreibers vorhanden?
        - **🙂 Beispiel:** "Willkommen bei der Bernasconi AG!"
        - **🙂 Beispiel:** "Bernasconi AG - Startseite"
        - **🙂 Beispiel:** "Bernasconi AG"
        - **😡 Beispiel:** "Willkommen"
        - **😡 Beispiel:** "Startseite"
3. Für verschiedene Unterseiten wiederholen!
    - **🙂 Beispiel:** "Kontakt - Bernasconi AG"
    - **🙄 Beispiel:** "Bernasconi AG: Kontakt"
        - ⚠️ Sich wiederholender Teil (Seitenbetreiber) am Anfang ist suboptimal, da redundant für Screenreader
    - **🙂 Beispiel:** "Über die Bernasconi AG"
    - **😡 Beispiel:** "Kontakt"
    - **😡 Beispiel:** "Über uns"

## Prüfmethode für Mobile (Ergänzungen zu Web)

Sowas wie ein `<title>` gibt es bei Mobile Apps nicht. Zwar haben die meisten Screens vieler typischer Apps sowas wie eine Überschrift zuoberst, aber ich denke nicht, dass dies vergleichbar ist.

## Prüfmethode für PDF (Ergänzungen zu Web)

### Prüf-Schritte
1. PDF mit [🏷️ Adobe Reader](/de/tags/adobe-reader) öffnen
1. Überprüfen, ob ein Dokumenttitel oder der Dateiname angezeigt wird.
1. Wenn kein Titel angezeigt wird: In den Dokumenteigenschaften überprüfen, ob ein Titel erfasst ist und ob unter "Ansicht beim Öffnen" Dokumenttitel ausgewählt ist.

## Details zum blinden Testen

[🏷️ NVDA Screenreader](/de/tags/nvda-screenreader) sagt den Titel beim Öffnen einer Seite an.

## Screenshots typischer Fälle

### Einzelner Tab

![Webseite der Deutschen Bahn in Chrome](images/webseite-der-deutschen-bahn-in-chrome.png)

Hier fehlt der Name der Seiten-Betreiber:in (Deutsche Bahn).

### Viele Tabs neben einander

![Viele Tabs neben einander in Chrome](images/viele-tabs-neben-einander-in-chrome.png)

Auch für visuelle Nutzer ist es hier sinnvoll, dass der Thema der Seite am Anfang des Titels steht.

Als Vergleich:

![Viele Tabs, deren Titel identisch anfangen](images/viele-tabs-deren-titel-identisch-anfangen.png)

## Videos

Keine Videos verfügbar.
