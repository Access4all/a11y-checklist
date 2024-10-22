---
id: "115"
parent_id: "75"
wcag_version: "2.2"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/accessible-authentication-minimum.html"
created_at: "2023-10-23 11:06:30"
---

# 📜 3.3.8 Accessible Authentication (Minimum) - AA

## Understanding (short)

**Logging in** must be possible **without** solving **complicated mental tasks** or having to **memorise information**. This reduces the effort for cognitively impaired people.

## Understanding (long)

Complicated mental tasks overwhelm certain users; this also includes the short-term memorization and reproduction of information.

### Conventional login and multi-factor authentication

Conventional login forms are permitted if all input fields have correctly linked labels (see [📜-1.3.1c Forms, Labels and Fieldsets](/en/wcag/1.3.1c-forms-labels-and-fieldsets)) and a suitable input purpose is evident (see [📜-1.3.5 Identify Input Purpose](/en/wcag/1.3.5-identify-input-purpose)). However, the copying and pasting of login-relevant information into the login form must **not** be prevented; the same applies to supporting functionalities such as password managers.

Multi-factor authentication, e.g. where a code or login link is sent by email, is also fine. It is important that all steps required for authentication are barrier-free (e.g. including those offered by third-party mobile apps).

**Note:** This success criterion does not refer to the creation of a user account, but to logging in with it.

### CAPTCHAs, object recognition tests and puzzles

CAPTCHAs in which distorted numbers and letters have to be recognized are not permitted. Graphical puzzles, in which puzzle pieces have to be put together correctly, are also problematic.

On the other hand, tests in which the user has to recognize an object (such as an animal or vehicle) are okay - unless additional considerations are required (such as: "Multiply the number of cats by the number of dogs").

**Important:** Such tests bring with them a whole host of additional challenges: for example, they must also be able to be operated with the keyboard and understood via screen reader, see also [✅ Graphical CAPTCHAs](/en/wcag/1.1.1-non-text-content/graphical-captchas) and [✅ Operable with the keyboard](/en/wcag/2.1.1-keyboard/operable-with-the-keyboard).

### Responsibilities

- The development team ensures that authentication options are implemented as barrier-free as possible (in particular, copy & paste must not be prevented).
- Clients should be aware that certain authentication options have inherent barriers (e.g. CAPTCHAs). Alternative authentication options may need to be available and accessible.

## Examples

- Instead of requesting a password, a website sends a link for direct login to the email address of the specified user.
- A website offers authentication via a third-party provider using OAuth.
- For logging in other accessible options  to the user are offered such as fingerprint or facial recognition.

```html
<label for=‘user’>Nutzer</label>
<input id=‘user’ type=‘text’ autocomplete=‘username’><!-- Input purpose recognisable thanks to autocomplete attribute -->

<label for=‘pw’>Passwort</label>
<input id=‘pw’ type=‘password’ autocomplete=‘current-password’><!-- Likewise! -->
```

## ✅ Checkpoints

- [✅ Accessible authentication](accessible-authentication)

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#accessible-authentication-minimum>
- <https://www.w3.org/WAI/WCAG22/quickref/#accessible-authentication-minimum>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G218>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H100>

## References internal

### Weiteres

- Intopia 3.3.8: <https://youtu.be/WJgc-goUhS0>
- <https://www.tpgi.com/how-to-test-3-3-8-accessible-authentication-minimum/>
- <https://www.wcag.com/developers/3-3-7-accessible-authentication-level-aa/>
- <https://www.digitala11y.com/understanding-sc-3-3-8-accessible-authentication-method-minimum/>
- <https://www.hellbusch.de/barrierefreie-authentifizierung/>