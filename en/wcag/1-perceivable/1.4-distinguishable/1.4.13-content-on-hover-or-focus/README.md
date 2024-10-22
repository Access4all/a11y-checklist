---
id: "94"
parent_id: "66"
wcag_version: "2.1"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/content-on-hover-or-focus.html"
created_at: "2019-11-10 20:20:52"
---

# 1.4.13 Content on Hover or Focus - AA

## Understanding (short)

**Hidden content** displayed when elements receive the mouse pointer or keyboard focus (e.g. custom tooltips or drop-down navigation) must be **hideable, hoverable and permanent**. This allows full interaction with both this content and the surrounding content.

## Understanding (long)

Elements that are shown or hidden by the user's interaction (e.g. tooltips, see **✅-107 QuickInfos / Toggletips**) can be confusing if they do not behave and operate predictably. Additional content that appears when the mouse pointer or keyboard is focussed is particularly problematic for people with visual impairments who work with high zoom magnification.

The following aspects must be taken into account:

- **Hideable:** Faded-in content often obscures other content. There must be a way to close faded-in content without moving the focus (e.g. by pressing the ‘Esc’ key or by activating the element whose focus has faded in the content).
    - Exceptions are cases in which the displayed content is an error message or does not cover or replace any other content.
- **Hoverbar:** Content is often only partially visible due to a high zoom factor. If moving the mouse pointer displays additional content (hover), it must be possible to move the mouse pointer over the additional content (which usually shifts the visible section) without it disappearing again.
    - Exceptions are cases where content is displayed when a specific element receives the keyboard focus.
- **Persistent:** People with visual impairments often need more time to read content. Displayed content must therefore remain available until it is actively closed: i.e. until further tabbing, the mouse pointer is moved away from the element, or the content is cancelled through targeted interaction.
    - Exceptions are cases in which the displayed content is no longer valid.

### Notes

- If activating (clicking, tapping, Enter key) the element that fades in the content leads to the faded-in content being closed, the context must remain (and no further actions that change the context, such as activating a link, may be triggered).
- If content is displayed via hover, it must also be displayed with keyboard focus, unless it is made available as an alternative. For requirements relating to the keyboard, see success criterion **📜-2.1.1 Keyboard**.
- The requirement does not apply to displayed content whose behaviour is determined by the user agent (e.g. browser) (e.g. native `title` attributes).

### Responsibilities

- The development team ensures that content displayed via hover or focus can be hidden and hovered and does not close automatically.

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#content-on-hover-or-focus>
- <https://www.w3.org/WAI/WCAG22/quickref/#content-on-hover-or-focus>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/client-side-script/SCR39>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-4-13-eingeblendete-inhalte/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-4-13-eingeblendete-inhalte-bedienbar>

### Weiteres
- <https://www.wcag.com/authors/1-4-13-content-on-hover-or-focus/>
- <https://www.digitala11y.com/understanding-sc-1-4-13-content-on-hover-or-focus/>
- <https://www.boia.org/blog/tips-for-meeting-wcag-1.4.13-content-on-hover-or-focus>