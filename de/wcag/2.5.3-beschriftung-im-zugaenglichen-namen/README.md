---
id: "101"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/label-in-name.html"
created_at: "2019-11-10 20:24:51"
---

# 📜 2.5.3 Beschriftung im zugänglichen Namen - A

## Verstehen (in Kürze)

Die für assistierende Technologien (z.B. Screenreader) **zugänglich verfügbare Beschriftung** eines Bedienelements muss **gleich** sein wie die **visuell sichtbare Beschriftung**, oder sie muss diese enthalten. Dies ermöglicht es Menschen, welche die Bedienelemente visuell sehen, aber z.B. über eine Sprachsteuerung mit ihnen interagieren, das intuitive Ansteuern derselben.

## Verstehen (ausführlich)

Via Spracheingabe können Bedienelemente wie Links, Schalter, Checkboxen oder Eingabefelder benutzt werden, indem die sichtbare Beschriftung ausgesprochen wird. Das funktioniert auch in der Verbindung mit Befehlen (z.B. "Klicke Anmelden"). Unterscheidet sich die visuell sichtbare Beschriftung aber von der zugänglichen Beschriftung, ist die Bedienung z.B. mittels Sprachsteuerung nicht oder nur auf Umwegen möglich.

Bei Bedienelementen mit Beschriftungen, die Text oder Bilder von Text enthalten, muss der zugängliche Name den sichtbaren Text enthalten. Manchmal wird versteckter Text benutzt, um sichtbare Beschriftungen zu erweitern, oft auch in der Absicht, Menschen mit Behinderungen zu helfen. Das ist zulässig, wenn die sichtbare Beschriftung an einem Stück im zugänglichen Namen enthalten ist, am besten zu Beginn.

Problematisch sind z.B. grafische Schalter mit visuell sichtbarem Label, bei denen die Textalternative nicht genau dem visuellen Label entspricht. Dadurch wird eine Sprachsteuerung verunmöglicht, weil das System in der Folge nicht auf das visuelle Label reagiert. Die sichtbare Beschriftung "AGB akzeptieren" einer Checkbox könnte z.B. im hinterlegten zugänglichen Namen durch "Allgemeine Geschäftsbedingungen annehmen" ersetzt werden. Wenn via Spracheingabe nun "Klicke AGB akzeptieren" diktiert wird, ist dieser Text so nicht im zugänglichen Namen enthalten und die Eingabe schlägt fehl.

Die zugängliche Beschriftung kann von der sichtbaren Beschriftung abweichen, wenn sie z.B. über nicht sichtbare Attribute festgelegt wird: `alt`-Attribute bei Grafiken, visuell versteckte (oder visuell nicht eindeutig zuweisbare) `<label>`-Elemente, Attribute wie `aria-label` und `aria-labelledby` (`aria-describedby` hingegen nicht), etc. Dabei ist zu beachten, dass sowohl `aria-label` als auch `aria-labelledby` einen ggf. bereits vorhandenen zugänglichen Namen überschreiben (etwa den Inhalt eines `<label>`-Elements).

### Verantwortlichkeiten

- Das Entwicklungsteam stellt sicher, dass alle Bedienelemente die Vorgaben erfüllen. Dabei muss die sichtbare Zeichenkette vollständig und genau in der zugänglichen Beschriftung enthalten sein. Zusätzliche Texte innerhalb dieser Zeichenketten sind unzulässig.
- Die Inhaltsverantwortlichen verfassen Beschriftungen für von ihnen erstellte Bedienelemente (z.B. Anmelden-Schalter in einem Formular) so, dass die sichtbare Beschriftung vollständig und genau auch im Code enthalten ist. Bietet das CMS keine Option, separat zugängliche Beschriftungen zu erfassen, liegt die Verantwortlichkeit allein beim Entwicklungsteam.

## Beispiele

```html
<!-- Problem: Einkaufswagen auf Bild entspricht nicht dem Alternativtext -->
<button>
  <img src="shopping-cart.png" alt="Bestellung abschicken">
</button>

<!-- Problem: Zugänglicher Name ("Abschicken") weicht vom visuell sichtbaren Text ("Bestätigen") ab -->
<button aria-label="Abschicken">
  Bestätigen
</button>

<!-- Problem: Zugänglicher Name ("Die Allgemeinen Geschäftsbedingungen akzeptieren") weicht vom visuell sichtbaren Text ("Ich akzeptiere die ") ab -->
<label for="accept_agb">Ich akzeptiere die AGBs</label>
<input type="checkbox" id="accept_agb" aria-label="Die Allgemeinen Geschäftsbedingungen akzeptieren" />

<!-- Okay: Visuell sichtbarer Text ("Einloggen") im zugänglichen Namen ("Im User-Account einloggen") enthalten -->
<a href="..." aria-label="Im User-Account einloggen">
  Einloggen
</a>
```

## ✅ Checkpoints

- [✅ Zugängliche Beschriftung](zugaengliche-beschriftung)

## Referenzen (öffentlich)

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#label-in-name>
- <https://www.w3.org/WAI/WCAG22/quickref/#label-in-name>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G208>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G211>

## Referenzen (intern)

### BITV
- <https://www.bit-inklusiv.de/vdp/2-5-3-sichtbare-beschriftung-teil-des-zugaenglichen-namens/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-5-3-sichtbare-beschriftung-teil-des-zugaenglichen-namens>

### Weiteres
- <https://www.wcag.com/authors/2-5-3-label-in-name/>
- <https://www.wuhcag.com/label-in-name/>
- <https://www.digitala11y.com/understanding-sc-2-5-3-label-in-name/>
- <https://www.boia.org/wcag2/cp/2.5.3>