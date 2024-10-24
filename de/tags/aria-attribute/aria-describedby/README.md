---
id: "29"
parent_id: "59"
created_at: "2024-03-09 14:35:03"
---

# 🏷️ aria-describedby

## Beschreibung

V.a. für Fehlermeldungen sinnvoll.

### Nur Plain-Text

Elemente, die via `aria-describedby` mit einem Element verknüpft sind, werden nur als Plain-Text ausgegeben. Information über enthaltene Semantik wird ausgegeben (z.B. ein Link "AGBs lesen" in einem Paragraf wird nur als "AGBs lesen" angesagt, nicht als "Link AGBs lesen"). Insofern müssen solche beschreibenden Texte so geschrieben werden, dass sie auch ohne semantische Info verständlich bleiben.

Vgl. z.B. [✅ Text-Elemente zwischen Eingabefeldern](/de/wcag/1.3.1c-formular-beziehungen/text-elemente-zwischen-eingabefeldern) und [✅ Fehlermeldungen in Formularen](/de/wcag/3.3.1-fehlerkennzeichnung/fehlermeldungen-in-formularen).

### Mehrere IDs möglich

Man kann nicht nur eine ID übergeben (`aria-describedby="help-text"`), sondern mehrere durch Leerzeichen getrennt (`aria-describedby="help-text another-help-text"`).