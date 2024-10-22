---
id: "105"
parent_id: "77"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html"
created_at: "2019-11-10 20:26:08"
---

# 4.1.3 Statusmeldungen - AA

## Verstehen (in Kürze)

**Statusmeldungen** (Informationen über Erfolg, Fortschritt oder Ergebnis einer Aktion, oder auch über auftretende Fehler) müssen **erkannt werden** können **von assistierenden Technologien** (z.B. Screenreader). Dies erlaubt die automatische Ausgabe jener Meldungen, ohne dass sie manuell gesucht werden müssen und potenziell übersehen werden.

## Verstehen (ausführlich)

Assistierende Technologien (z.B. Screenreader) überwachen nicht immer den ganzen Seiteninhalt. In Fällen, wo sich **ein Teil der aktuellen Seite** ändert (z.B. um eine Fehlermeldung anzuzeigen), müssen deshalb spezielle Massnahmen getroffen werden, damit diese Änderungen trotzdem ausgegeben werden.

Typischerweise handelt es sich um Status-Meldungen folgender Art:

- "27 Ergebnisse gefunden", z.B. wenn ein Filter angepasst wird und automatisch die Suchergebnisse aktualisiert werden.
- "Bitte warten Sie" oder "Seite wird geladen", z.B. nach dem Absenden einer Suchanfrage.
- "Persönliches Profil erfolgreich gespeichert", z.B. nach Aktualisieren und Speichern von Angaben in einem Nutzerkonto.
- "2 Produkte im Warenkorb" oder "Produkt in den Warenkorb gelegt", z.B. wenn per Schaltfläche die Zahl der Produkte in einem Warenkorb erhöht wird oder ein Produkt dem Warenkorb hinzugefügt wird.
- "Buch auf der Merkliste hinzugefügt", z.B. wenn eine Merken-Funktion für Produkte zur Verfügung steht.
- "Vorname ist ein Pflichtfeld" oder "2 Felder sind fehlerhaft", z.B. bei Client-seitiger Überprüfung eines Formulars (also ohne Neuladen der Seite).
    - Dies ist nicht zu empfehlen bei Verlassen eines Felds, sondern erst bei Abschicken des Formulars (zur Umsetzung von Fehlermeldungen siehe auch **📜-3.3.1 Fehlerkennzeichnung** sowie **📜-3.3.3 Vorschlag bei Fehler**).
- "Die Auktion läuft in 60 Sekunden ab", z.B. bei einer Online-Auktion.

**Wichtig:** Wenn solche Meldungen **nicht** in die aktuelle Seite hineingeladen werden (via JavaScript), sondern jeweils die ganze Seite neu lädt, dann handelt es sich **nicht** um Status-Meldungen. In solchen Fällen sind keine zusätzlichen Vorkehrungen gefordert.

### Live-Regions

Die Ausgabe eines Elements durch assistierende Technologien kann mit Live-Regions erfolgen (z.B. `aria-live="polite"` oder `role="alert"`). Setzen Sie diese aber mit Bedacht ein, um den Audiokanal nicht zu überstrapazieren: es ist z.B. unerwünscht, im Screenreader regelmässig scheinbar willkürliche Status-Meldungen zu hören, da dies zu unerwünschten Überlagerungen und Unterbrechungen im Audiokanal führen kann.

**Hinweis:** Damit ein Element durch assistive Technologien angesagt wird, kann auch der Fokus darauf gesetzt werden (siehe **✅-47 Korrekte Reihenfolge**). Dies macht aber nur dann Sinn, wenn mit dem Element direkt interagiert werden soll (z.B. bei der Anzeige einer Meldung "Ihre Session läuft in 2 Minuten ab; klicken Sie hier, um zu verlängern!"). Bei blossen Hinweisen (ohne Handlungsbedarf) ist dies hingegen nicht angebracht.

### Single-Page-Apps (SPAs)

Es ist ungünstig, umfangreiche Inhalte (z.B. SPAs) komplett als Live-Regions zu deklarieren, da Screenreader-Nutzende diese nicht "ununterbrochen am Stück" verarbeiten können, sondern schnell überfordert sind bei solcher Informationsflut. Besser ist es, bspw. nur die einleitende Überschrift eines umfangreichen Containers als Status-Meldung auszugeben und es den Nutzenden zu überlassen, weitere Inhalte manuell zu lesen.

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass Statusmeldungen so implementiert sind, dass sie von assistierenden Technologien (z.B. Screenreadern) automatisch erkannt und ausgegeben werden können.

## Beispiele

```html
<!-- Diese Elemente werden von Screenreadern sofort ausgegeben, wenn ihr Inhalt sich ändert. -->
<p aria-live="polite">Bitte bestätigen Sie, dass Sie die AGB gelesen haben.</p>
<p role="alert">Die Auktion läuft in 60 Sekunden ab.</p>
```

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#status-messages>
- <https://www.w3.org/WAI/WCAG22/quickref/#status-messages>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G199>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA19>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G83>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G84>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G85>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G177>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G194>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA23>
- <https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G193>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/4-1-3-statusmeldungen-programmatisch-verfuegbar/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-4-1-3-statusmeldungen-programmatisch-verfuegbar>

### Weiteres
- <https://www.wcag.com/developers/4-1-3-status-messages/>
- <https://www.digitala11y.com/understanding-sc-4-1-3-status-messages/>
- <https://www.boia.org/blog/understanding-wcag-2-1-success-criterion-4-3-1-status-messages>