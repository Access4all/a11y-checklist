---
id: "31"
parent_id: "69"
created_at: "2024-03-09 14:40:58"
video_ids: "[]"
---

# 🏷️ Komplexe Grafiken

## Beschreibung

Wenn Grafiken viel Information beinhalten, reicht der typische Alternativtext von 100+ Zeichen nicht aus, um sie gebührend zu beschreiben.

In solchen Fällen soll zusätzliche beschreibende Information bereit gestellt werden, etwa im Paragrafen unterhalb des Bildes (am besten mit Verweis darauf von innerhalb des Alternativtexts):

```html
<img src="organigramm.jpg" alt="Organigramm der ACME Inc., Details siehe unten">
<p>Kopf des Organigramms ist Präsident Klaas Klever. Darunter befinden sich...</p>
```

Auch die `<figure>`/`<figcaption>`-Kombination kann hier gewinnbringend eingesetzt werden:

```html
<figure>
  <img src="organigramm.jpg" alt="Organigramm der ACME Inc.">
  <figcaption>Kopf des Organigramms ist Hans Meyer. Darunter befinden sich...</figcaption>
</figure>
```

Manchmal macht es Sinn, zusätzliche Informationen per Download anzubieten. Dies soll aber nie als Ersatz für einen gut formulierten Alternativtext verstanden werden!

```html
<img src="pie-chart.jpg" alt="Statistische Auswertung des Fragebogens">
<p>
  <a href="fragebogen.xls">Rohdaten des Fragebogens als Excel-Datei</a>
</p>
```

Das [`longdesc`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/longDesc)-Attribut hingegen ist deprecated.

## Videos

Keine Videos verfügbar.
