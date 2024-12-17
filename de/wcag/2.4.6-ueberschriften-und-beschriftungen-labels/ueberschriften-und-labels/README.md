---
id: "80"
wcag_criterion_id: "39"
applies_to_pdf: "true"
applies_to_design: "true"
applies_to_development: "true"
applies_to_content: "true"
applies_to_quality_assurance: "true"
created_at: "2024-03-15 13:58:51"
---

# ✅ Überschriften und Labels

WCAG-Kriterium: [📜 2.4.6 Überschriften und Beschriftungen (Labels) - AA](..)

## Beschreibung

Überschriften und Labels (z.B. in Eingabefeldern, bei Schaltern, etc.) sind ausreichend informativ und korrekt und bezeichnen den zugeordneten Web-Inhalt verständlich. Es gibt keine gleichlautenden Überschriften oder Labels auf einer Seite.

## Prüfmethode (in Kürze)

**Bookmarklet h123:** Ausführen und mit Seite abgleichen: Sind Überschriften informativ?

**Manuelle Prüfung:** Haben Eingabefelder und Schalter sinnvolle Beschriftungen?

## Prüfmethode für Web (ausführlich)

### Test-Schritte

1. Seite öffnen
1. Sicherstellen, dass die Überschriften und Labels akkurat beschreibend sind
    - **🙂 Beispiel:** Eine Wikipedia-ähnliche Seite hat als `<h1>` den Namen des Themas, z.B. "Barrierefreiheit (Definition)"
        - **🙄 Beispiel:** Sie hat auf jeder Seite als `<h1>` den generischen Begriff "Thema", "Aktuelles Thema", "Thema dieser Seite", o.ä. → ⚠️ Das ist nicht komplett verboten, aber auf jeden Fall deutlich weniger als optimal
    - **🙂 Beispiel:** Der Login-Bereich einer Webseite hat als `<h2>` den Inhalt "Login-Bereich", "Einloggen", o.ä.
        - **🙄 Beispiel:** Er hat den deutlich weniger aussagekräftigen Begriff "Nutzer" (was z.B. auch auf eine Liste aktiver Nutzer der Seite hinweisen könnte)
    - **🙂 Beispiel:** Eine Auktions-Webseite hat einen Bereich "Aktuelle Inserate", wo die Inserate aller Nutzer angezeigt werden, sowie einen Bereich "Meine Inserate", wo eigene Inserate verwaltet werden können.
        - **🙄 Beispiel:** Der Bereich mit den eigenen Inseraten wird durch "Eigene" betitelt, was sehr unspezifisch ist → ⚠️ Es könnte sich dabei auch um eigene Äpfel oder Birnen handeln
        - **😡 Beispiel:** Beide Bereiche werden durch "Inserate" betitelt
    - **🙂 Beispiel:** Ein Adress-Formular bietet ein einziges Feld für den Namen einer Person an mit dem Label "Vorname, Nachname"
        - **🙄 Beispiel:** Das Label ist **Name** → ⚠️ Dies ist nicht zwingend falsch, aber es dürfte gerne spezifischer sein
    - **🙂 Beispiel:** Eine News-Übersicht hat für jeden Eintrag einen Link "Mehr lesen"; für Screenreader bietet jeder Link zusätzlich einen Hinweis zum News-Eintrag, z.B. "Mehr lesen: Wahlen in Stochasien" und "Mehr lesen: Künstliche Intelligenz ist dumm"
        - **😡 Beispiel:** Jeder Link wird vom Screenreader nur als "Mehr lesen" ausgegeben

@Thinh-Lay: Ich finde es gar nicht so einfach, hier klar gute und schlechte Beispiele zu finden. Hast du noch einige Ideen??

## Screenshots typischer Fälle



## Videos

- [🎬 Vorbildliche Überschriften (inkl. versteckte) - MySwitzerland](/videos/vorbildliche-ueberschriften-inkl-versteckte-myswitzerland)
- [🎬 Vorbildliche Überschriften (inkl. versteckte) - WOZ](/videos/vorbildliche-ueberschriften-inkl-versteckte-woz)