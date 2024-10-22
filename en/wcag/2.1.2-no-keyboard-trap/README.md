---
id: "24"
parent_id: "68"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/no-keyboard-trap.html"
created_at: "2015-08-04 14:36:00"
---

# 2.1.2 No Keyboard Trap - A

## Understanding (short)

Content and functionalities must **not block the keyboard focus**. This makes it possible to exit elements that have been reached.

## Understanding (long)

If interactive elements no longer release the focus (i.e. you cannot leave an element or a group of elements using `Tab` or `Shift`-`Tab`), this makes it completely impossible to interact with the rest of the page using the keyboard (see **📜-2.1.1 Keyboard**).

Keyboard traps used to occur frequently with Flash or video content. Nowadays, they occur almost exclusively with incorrect focus control via JavaScript, see **📜-2.4.3 Focus Order**.

**Note:** In certain cases, temporarily blocking the focus is legitimate, for example if a modal dialogue (**✅-103 Dialogs**) retains the focus within its own content. However, it must be possible to close the dialogue and release the focus again at any time: for example, by activating a "Close" button, or by another mechanism (such as the `Esc` button).

### Responsibilities

- The development team implements the focus guidance correctly.

## Checkpoints

- [Keyboard traps](keyboard-traps)