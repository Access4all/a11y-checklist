---
id: "26"
parent_id: "69"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/timing-adjustable.html"
created_at: "2015-08-04 14:36:00"
---

# 2.2.1 Timing Adjustable - A

## Understanding (short)

It must be possible to **extend or deactivate** existing **time limits** (such as session logouts). This protects people from being interrupted while working, even if they take longer to interact with input devices (e.g. people with motor impairments who can only use the keyboard with a single finger) or need more time to understand software (e.g. people with reading difficulties).

## Understanding (long)

People with disabilities often take longer to read and interact with complex web content and are therefore much more likely to exceed a time limit during a session (and be automatically logged out, for example). Such limits must be adaptable accordingly.

The following options are permitted:

- The time limit can be switched off before it becomes relevant. A clear indication of this setting is required.
- The time limit can be increased to at least `10` times the value of the default setting.
- A warning is issued before the time interval expires and at least `20` seconds remain to extend the available time with a simple action (e.g. confirming a dialog that appears). This option must exist at least `10` times.

**Exceptions:** If the time limit is more than `20` hours, or the extension renders the action invalid (e.g. in an online auction), then the timeout is considered indispensable.

**Note:** If the website has a function that updates automatically (such as a news ticker), it must be possible to delay the frequency of updates by at least 10 times the default setting. The same also applies to messages that are only displayed for a short time (e.g. confirmation of a user action).

### Responsibilities

- The design team defines easy-to-perceive and easy-to-use ways to adjust time constraints.
- The development team correctly implements the specifications defined by the design team.
- Clients should be aware that time constraints must be reasonably customizable.

## Examples

- In an online store, while an order process is being completed, a clearly perceptible notice appears in good time before the session expires, indicating that the session can be extended by confirming the notice
- In e-banking, the duration of a session can be increased to the required value in the profile settings.

## Checkpoints

- [Timeout intervals](timeout-intervals)