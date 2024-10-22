---
id: "14"
wcag_criterion_id: "1"
applies_to_pdf: "false"
applies_to_design: "false"
applies_to_development: "true"
applies_to_content: "false"
applies_to_quality_assurance: "true"
created_at: "2024-03-13 16:25:32"
---

# Prüfpunkt: Grafische CAPTCHAs

## Beschreibung

Grafische CAPTCHAs bieten eine Alternative (z.B. Audio-CAPTCHA).

## Prüfmethode (in Kürze)

**Screenreader:** Versuchen, das Captcha erfolgreich abzuschicken.

## Prüfmethode für Web (ausführlich)

### Test-Schritte

Grafische CAPTCHAs sind per se nicht barrierefrei: ihr Sinn und Zweck ist ja, dass die gestellte Aufgabe nicht programmatisch gelöst werden kann (also z.B. durch einen Bot), sondern dass nur ein Mensch sie lösen kann. Insofern geht es bei diesem Prüfpunkt nur darum, sicherzustellen, dass ein CAPTCHA nicht nur über eine einzige Modalität (z.B. visuell) gelöst werden kann, sondern über weitere (z.B. Audio).

Vergleiche auch **📜-3.3.8 Barrierefreie Authentifizierung (Minimum)**.

## Screenshots typischer Fälle

![Google Recaptcha (mit Audio-Alternative)](images/google-recaptcha.png)

![Grafisches CAPTCHA](images/grafisches-captcha.png)

![Noch ein CAPTCHA](images/noch-ein-captcha.png)