---
id: "115"
parent_id: "75"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/accessible-authentication-minimum.html"
created_at: "2023-10-23 11:06:30"
---

# 📜 3.3.8 Barrierefreie Authentifizierung (Minimum) - AA

## Verstehen (in Kürze)

**Einloggen** muss möglich sein **ohne** dass **komplizierte Denkaufgaben** gelöst werden oder dass man sich **Information merken** muss. Dies entlastet kognitiv eingeschränkte Menschen.

## Verstehen (ausführlich)

Komplizierte Denkaufgaben überfordern gewisse Nutzenden; dies beinhaltet auch das kurzzeitige Merken und Wiedergeben von Information.

### Herkömmliches Login und Mehr-Faktor-Authentifizierung

Herkömmliche Login-Formulare sind zulässig, wenn alle Eingabe-Felder korrekt verknüpfte Labels haben (siehe [📜-1.3.1c Formular-Beziehungen](/de/wcag/1.3.1c-formular-beziehungen)) und ein passender Eingabezweck ersichtlich ist (siehe [📜-1.3.5 Eingabezweck bestimmen](/de/wcag/1.3.5-eingabezweck-bestimmen)). Das Kopieren und Einfügen von Login-relevanter Information ins Login-Formular darf allerdings **nicht** unterbunden werden; dasselbe gilt für unterstützende Funktionalitäten wie Passwort-Manager.

Auch Mehr-Faktor-Authentifizierung, bei welcher z.B. ein Code oder Login-Link per Email zugeschickt wird, ist in Ordnung. Wichtig ist, dass alle bei der Authentifizierung notwendigen Schritte barrierefrei sind (z.B. auch solche, die durch Mobile-Apps von Drittanbietern angeboten werden).

**Hinweis:** Dieses Erfolgskriterium bezieht sich nicht auf die Erstellung eines Benutzer-Kontos, sondern auf das Einloggen damit.

### CAPTCHAs, Objekt-Erkennungs-Tests und Rätsel

CAPTCHAs, bei welchen etwa verzerrte Zahlen und Buchstaben erkannt werden müssen, sind nicht zulässig. Grafische Rätsel, bei welchen etwa Puzzle-Teile korrekt zusammen gesetzt werden müssen, sind ebenfalls problematisch.

Hingegen Tests, bei welchen der Nutzer ein Objekt erkennen muss (etwa ein Tier oder Fahrzeug), sind in Ordnung - ausser es werden dabei zusätzliche Überlegungen gefordert (etwa: "Multipliziere die Anzahl Katzen mit der Anzahl Hunde").

**Wichtig:** Solche Tests bringen eine ganze Menge zusätzlicher Herausforderungen mit sich: sie müssen etwa auch mit der Tastatur bedient und per Screenreader verstanden werden können, siehe auch [✅ Grafische CAPTCHAs](/de/wcag/1.1.1-nicht-text-inhalt/grafische-captchas) und [✅ Mit der Tastatur bedienbar](/de/wcag/2.1.1-tastatur/mit-der-tastatur-bedienbar).

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass Authentifizierungs-Möglichkeiten möglichst barrierefrei umgesetzt sind (insbesondere darf Copy & Paste nicht unterbunden werden).
- Auftraggebende sollten sich bewusst sein, dass gewisse Authentifizierungs-Möglichkeiten inhärente Barrieren aufweisen (z.B. CAPTCHAs). Es müssen ggf. alternative Authentifizierungs-Möglichkeiten zur Verfügung stehen, die zugänglich sind.

## Beispiele

- Statt die Eingabe eines Passworts zu fordern, schickt eine Webseite einen Link zum direkten Login an die Email-Adresse des angegebenen Nutzers.
- Eine Website bietet das Authentifizieren über einen Drittanbieter per OAuth an.
- Zum Anmelden werden weitere für den Nutzer zugängliche Möglichkeiten angeboten, wie Fingerabdruck oder Gesichtserkennung.

```html
<label for="user">Nutzer</label>
<input id="user" type="text" autocomplete="username"><!-- Eingabezweck erkennbar dank autocomplete-Attribut -->

<label for="pw">Passwort</label>
<input id="pw" type="password" autocomplete="current-password"><!-- Ebenso! -->
```

## ✅ Checkpoints

- [✅ Barrierefreies Authentifizieren](barrierefreies-authentifizieren)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#accessible-authentication-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#accessible-authentication-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G218>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H100>

### Weiteres

- Intopia 3.3.8: <https://youtu.be/WJgc-goUhS0>
- <https://www.tpgi.com/how-to-test-3-3-8-accessible-authentication-minimum/>
- <https://www.digitala11y.com/understanding-sc-3-3-8-accessible-authentication-method-minimum/>
- <https://www.hellbusch.de/barrierefreie-authentifizierung/>
