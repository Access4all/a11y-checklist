---
id: "102"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/motion-actuation.html"
created_at: "2019-11-10 20:25:15"
---

# 📜 2.5.4 Motion Actuation - A

## Understanding (short)

Functionalities that are triggered by **device movement** (such as shaking the device) or **motion detection** (via video) must also be able to be executed via an **alternative, easy-to-use input**; it must also be possible to deactivate them. This enables people with motor impairments to use such functionalities if required.

## Understanding (long)

People with severe motor impairments cannot move their device at will (or not at all), e.g. because their smartphone is attached to a wheelchair (physically anchored in a holder). It should therefore not be assumed that all devices can be moved. Even gestures that are recognised by video cannot be performed by many people.

Such functionalities must also be usable using simple input methods, e.g:

- In addition to the option of shaking the smartphone, an ‘undo’ button also offers this function.
- In addition to the option of switching to the next slide in a presentation using a swipe gesture in the air (which is recognised by a camera), ‘Next slide’ or ‘Previous slide’ buttons also offer this function.

It must also be ensured that such functionalities are not triggered accidentally, e.g. by a shaking movement due to muscle tremors or other unintentional movements. It must therefore be possible to deactivate the functionalities.

**Exception:** Movement inputs that are essential for the function and are necessarily based on device control, e.g. when a movement sensor records a person's steps or when the movement is part of an accessibility-supported aid input.

### Responsibilities

- The development team ensures that alternatives exist for functions that can be triggered by device or user movement. It must also be possible to deactivate such functionalities.

## ✅ Checkpoints

- [✅ Alternatives for movement activation](alternatives-for-movement-activation)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#motion-actuation>
- <https://www.w3.org/WAI/WCAG22/quickref/#motion-actuation>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G213>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-5-4-alternativen-fuer-bewegungsaktivierung/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-5-4-alternativen-fuer-bewegungsaktivierung>

### Weiteres
- <https://www.wcag.com/developers/2-5-4-motion-actuation/>
- <https://www.wuhcag.com/motion-actuation/>
- <https://www.digitala11y.com/understanding-sc-2-5-4-motion-actuation/>
- <https://www.boia.org/wcag2/cp/2.5.4>
