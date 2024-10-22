---
id: "114"
parent_id: "75"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/redundant-entry.html"
created_at: "2023-10-23 11:05:05"
---

# 3.3.7 Redundant Entry - A

## Understanding (short)

Users should not have to enter **personal data multiple times**. This reduces the effort for cognitively impaired people.

## Understanding (long)

Some people find it difficult to store information in their short-term memory. Having to enter the same information at different points in a process can be a significant cognitive load. For example, when you have to enter the same address twice in an online shop as a delivery address and a billing address. This also increases the likelihood of input errors.

Previously entered user data must therefore be made available for selection in a subsequent process step during the same session: for example, via a checkbox "Use delivery address as billing address". This success criterion also applies across different providers within a process, e.g. when switching to a payment provider during checkout in an online shop.

**Note:** This success criterion does not apply to multiple sessions, nor does it apply to password entry, see also **📜-3.3.8 Accessible Authentication (Minimum)**.

### Exceptions

- If the repeated input is essential for the purpose of the input, such as entering the same password twice when creating a login (to avoid careless mistakes), or entering an answer in a quiz game.
- If the previously entered information is no longer valid, the user may be prompted to re-enter this information.

### Responsibilities

- The design team provides ways to easily re-use personal information that has already been entered.
- The development team correctly implements the specifications defined by the design team.

## Examples

- An online shop offers previously entered addresses for selection via a drop-down list.
- The search results page immediately fills the search field with the previously entered search term.

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#redundant-entry>
- <https://www.w3.org/WAI/WCAG22/quickref/#redundant-entry>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G221>

## References internal

### Weiteres

- Intopia 3.3.7: <https://youtu.be/jKirEdlHMao>
- <https://www.tpgi.com/how-to-test-3-3-7-redundant-entry/>
- <https://www.wcag.com/developers/success-criterion-3-3-9-redundant-entry-level-a/>
- <https://www.wuhcag.com/redundant-entry/>
- <https://www.digitala11y.com/understanding-wcag-sc-3-3-7-redundant-entry-level-a/>
- <https://www.hellbusch.de/redundante-eingabe/>