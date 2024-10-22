---
id: "27"
parent_id: "69"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pause-stop-hide.html"
created_at: "2015-08-04 14:36:00"
---

# 📜 2.2.2 Pause, Stop, Hide - A

## Understanding (short)

It must be possible **to stop or hide** **moving, flashing** or other** changing content** (such as adverts). This enables people who are distracted by it (e.g. with attention deficits) to use content without interference.

## Understanding (long)

Permanently animated elements (such as advertising banners) require additional attention. This can hinder people with limited cognitive performance from focussing on other content on the same page. As a result, such pages quickly become completely unusable. It must therefore be possible to pause, stop or hide such elements. This also applies to functions that update automatically (such as a news ticker).

**Exceptions:** If the movement is an animation that runs to indicate that something is loading (a ‘spinner’); or if the animation lasts no longer than 5 seconds.

**Note:** For requirements related to flickering or flashing content, see [📜-2.3.1 Three Flashes or Below Threshold](/en/wcag/2.3.1-three-flashes-or-below-threshold).

### Responsibilities

- The design team defines easy-to-perceive and easy-to-use options for pausing, stopping or fading out animations.
- The development team correctly implements the specifications defined by the design team.
- Clients should be aware that animations can be an unnecessary distraction for everyone.

## Examples

- A news ticker that reloads its content every few seconds to display the latest news has a pause button.
- A banner advert that constantly scrolls text horizontally across the screen has a pause button.
- A carousel that automatically displays a different slide every few seconds has a pause button (or stops changing automatically as soon as ‘Next slide’ is clicked, for example).
- A ‘Special offer!’ link flashes rhythmically or changes colour regularly.
- An animation that plays automatically (e.g. an advertising video) can be paused (or lasts no longer than 5 seconds).

## ✅ Checkpoints

- [✅ Permanently animated content](permanently-animated-content)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pause-stop-hide>
- <https://www.w3.org/WAI/WCAG22/quickref/#pause-stop-hide>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G4>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR33>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G11>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G152>
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR22>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G186>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G191>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-2-2-bewegte-inhalte-abschaltbar/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-2-2-bewegte-inhalte-abschaltbar>

### Weiteres
- <https://www.wcag.com/designers/2-2-2-pause-stop-hide/>
- <https://www.wuhcag.com/pause-stop-hide/>
- <https://www.digitala11y.com/understanding-sc-2-2-2-pause-stop-hide/>
- <https://www.boia.org/wcag2/cp/2.2.2>