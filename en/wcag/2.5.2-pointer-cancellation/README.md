---
id: "100"
parent_id: "98"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/pointer-cancellation.html"
created_at: "2019-11-10 20:24:28"
---

# 2.5.2 Pointer Cancellation - A

## Understanding (short)

**Pointing inputs** must be able to be **cancelled** during input or it must be possible to **undo** them. This makes it possible to cancel unintentional entries, which minimises the risk of functions being executed by mistake.

## Understanding (long)

Various forms of disability limit the precision of inputs when using devices, which can lead to incorrect inputs. For example, if a person suffering from muscle tremor accidentally presses the wrong button (e.g. ‘end call’ instead of ‘mute’), they can usually still cancel the input by moving their finger away from the button and only then lifting it up (thus preventing the action from being triggered).

Therefore, functionality that is operated with a pointing device must fulfil at least one of the following points:

- **No `down` event:** The `down` event is not used at all to trigger the function (or part of it).
- **Cancel or undo:** The function is triggered at the `up` event and a mechanism is available to cancel the function before execution or to undo the function after execution.
- **Reversal on `up`:** The `up` event reverses any effect of the preceding `down` event. Example: Someone holds down the ‘play’ button on a video player, which starts the video playing, and then stops pressing, which stops it playing again. This takes you back to the starting point and effectively cancels the process.
-** Essential:** Executing the function on the ‘down’ event is essential. Example: Drawing with a mouse, stylus or finger on a touchscreen; interacting with a virtual keyboard; emulating a physical keystroke (e.g. in a music application that offers a piano keyboard).

### Notes

- For more complex interactions, e.g. drag-and-drop (see also **📜-2.5.7 Dragging Movements**), the need for a cancel or undo function increases.
- If the function has to be confirmed by a dialogue after execution, there is no need for an undo function.
- An ‘up’ event is the execution of an action when the pointer is released, i.e. the mouse button is released or the finger is lifted on a touchscreen. Mousedown', “touchstart” and “pointerdown” are regarded as “down” events.

### Responsibilities

- The development team ensures that the specifications for pointer input cancellations are implemented. Standard HTML elements and `click` events are recommended, while `down` events should be avoided if possible.

## Examples

```html
<!-- Problematic response to a down event -->
<button onmousedown=‘submitForm()’>
  Submit order
</button>

<!-- Better (as it can be cancelled) -->
<button onclick=‘submitForm()’>
  Submit order
</button>
```

## Checkpoints

- [Cancellable pointer entries](cancellable-pointer-entries)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#pointer-cancellation>
- <https://www.w3.org/WAI/WCAG22/quickref/#pointer-cancellation>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G210>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G212>

## References internal

### BITV
- <https://www.bit-inklusiv.de/vdp/2-5-2-zeigerabbruch/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-2-5-2-zeigergesten-eingaben-koennen-abgebrochen-oder-widerrufen-werden>

### Weiteres
- <https://www.wcag.com/developers/2-5-2-pointer-cancellation/>
- <https://www.wuhcag.com/pointer-cancellation/>
- <https://www.digitala11y.com/2-5-2-pointer-cancellation/>
- <https://www.boia.org/wcag2/cp/2.5.2>