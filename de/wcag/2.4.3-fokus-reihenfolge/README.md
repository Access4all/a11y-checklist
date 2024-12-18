---
id: "36"
parent_id: "71"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/focus-order.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.4.3 Fokus-Reihenfolge - A

## Verstehen (in Kürze)

**Fokussierbare Elemente** müssen in einer **sinnvollen Reihenfolge** aneinander gereiht sein und der **Fokus** muss **sinnvoll geführt** werden. Dies ermöglicht es Menschen, die nur eine Tastatur benutzen, intuitiv und schnell zwischen diesen Elementen navigieren und mit ihnen interagieren zu können.

## Verstehen (ausführlich)

Menschen, die über die Tastatur mit einer Website interagieren, bewegen dessen Fokus durch die interaktiven Elemente in deren sequenziellen Reihenfolge (siehe [📜-2.1.1 Tastatur](/de/wcag/2.1.1-tastatur)). Stellen Sie sicher, dass die Reihenfolge des Fokus intuitiv ist, und der Fokus beim Tabben durch die einzelnen Elemente nachvollziehbar (gemäss der visuellen Anordnung) von Element zu Element springt.

Im Normalfall bestimmt die Anordnung der Elemente im DOM die Reihenfolge (siehe [📜-1.3.2 Bedeutungsvolle Reihenfolge](/de/wcag/1.3.2-bedeutungsvolle-reihenfolge)). Soll dies übersteuert werden, kann das `tabindex`-Attribut verwendet werden, wovon aber in der Regel abzuraten ist.

Erleichtern Sie zudem die Navigation per Tastatur, indem Sie den Fokus intelligent führen (z.B. via JavaScript oder `autofocus`-Attribut). Setzen Sie bspw. beim Öffnen eines modalen Dialogs ([✅ Dialoge](/de/wcag/4.1.2a-erweiterte-steuerelemente-widgets/dialoge)) den Fokus direkt in diesen hinein; verhindern Sie, dass er zurück in den abgedunkelten Hintergrund springen kann; und setzen Sie den Fokus zurück auf das vorhergehende Element, wenn der Dialog geschlossen wird. Seien Sie dabei aber vorsichtig, dass keine Tastatur-Falle auftritt (siehe [📜-2.1.2 Keine Tastaturfalle](/de/wcag/2.1.2-keine-tastaturfalle)).

Auch in Formularen kann Fokus-Führung angebracht sein. Setzen Sie z.B. beim Abschicken eines fehlerhaft ausgefüllten Formulars den Fokus direkt ins erste fehlerhafte Eingabefeld (siehe [📜-3.3.1 Fehlerkennzeichnung](/de/wcag/3.3.1-fehlerkennzeichnung)). Als Richtlinie gilt: womit möchte die Nutzerin als nächstes interagieren?

Vermeiden Sie zudem, dass der Fokus visuell "verloren" geht (etwa weil unsichtbare Elemente fokussiert werden können, vgl. auch [📜-2.4.11 Fokus nicht verdeckt (Minimum)](/de/wcag/2.4.11-fokus-nicht-verdeckt-minimum)) oder unerwarteterweise an den Anfang der Seite zurück gesetzt wird (etwa weil das zuvor fokussierte Element plötzlich aus dem DOM entfernt wurde).

### Verantwortlichkeiten

- Das Entwicklungsteam ordnet alle Elemente auf der Seite erwartungsgemäss aneinander und führt sinnvoll den Fokus der interaktiven Elemente.

### Abgrenzung

- Das vorliegende Erfolgskriterium stellt sicher, dass **manuelle Übersteuerung** der DOM-Reihenfolge für die Fokus-Reihenfolge sinnvoll passiert.
- Dass die DOM-Reihenfolge **ansich sinnvoll** ist, wird von [📜-1.3.2 Bedeutungsvolle Reihenfolge](/de/wcag/1.3.2-bedeutungsvolle-reihenfolge) gefordert.

## Beispiele

```html
<form action="...">
  <!-- Diverse Eingabe-Felder, z.B. Name, Vorname, Adresse... -->

  <button type="submit">Produkte bestellen</button>

  <!-- Wichtige Info unterhalb des Abschicken-Schalters! -->
  <p>Durch Abschicken dieses Formulars bestätigen Sie, unsere <a href="...">AGBs</a> gelesen zu haben.</p>
</form>
```

## ✅ Checkpoints

- [✅ Fokus-Reihenfolge](fokus-reihenfolge)
- [✅ Fokus-Führung](fokus-fuehrung)
- [✅ Elemente korrekt verstecken](elemente-korrekt-verstecken)
