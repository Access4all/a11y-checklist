---
id: "95"
parent_id: "68"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/character-key-shortcuts.html"
created_at: "2019-11-10 20:22:06"
---

# 📜 2.1.4 Character Key Shortcuts - A

## Understanding (short)

**Keyboard shortcuts** must **not be activated via individual keys** (e.g. `s`, `/`, `?`), or they must be modifiable or deactivatable. This prevents keyboard shortcuts from being triggered by mistake, e.g. by voice input.

## Understanding (long)

Keyboard shortcuts with only a single key are often problematic for people who work with voice input. Voice input can then trigger commands for functions unexpectedly. If websites implement keyboard shortcuts using single keys (letters, numbers, punctuation marks or symbols), it is therefore essential that these can either be disabled or switched to a key combination with modifier key(s) (e.g. 'Ctrl', 'Alt'), or that they are only active for certain interface elements when they have the focus.

Typical use cases are, for example, when the search field automatically receives the focus when `S` or `/` is pressed, or when help is displayed when `?` is pressed.

Single-button shortcuts can also cause problems for people with motor disabilities, especially if their hands are affected. Buttons can be pressed by mistake and actions triggered unintentionally. The context of use is lost as a result ("Where am I? What just happened? Why?").

**Important:** This success criterion has no effect on the keyboard operability of native HTML elements (e.g. `<select>`s are of course still operated by individual keys), see **📜-2.1.1 Keyboard**. Keyboard shortcuts implemented by the `accesskey` attribute are also not affected.

### Responsibilities

- The design team will define a mechanism to disable single-key keyboard commands (e.g. toggle switch that enables/disables single-key commands), or the ability for single-key commands to be switched to modifier key(s).
- The development team correctly implements the specifications defined by the design team.

## Examples

A website offers the keyboard shortcut 'S' to jump directly to a search field. This shortcut can be deactivated or changed in the user settings.

## ✅ Checkpoints

- [✅ Single-key shortcuts](single-key-shortcuts)