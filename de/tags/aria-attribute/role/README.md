---
id: "76"
parent_id: "59"
created_at: "2024-10-28 14:11:42"
---

# 🏷️ role

## Beschreibung

Mit dem `role`-Attribut kann man die Rolle eines Elements setzen und damit dessen Semantik verändern ([🏷️ Semantik](/de/tags/techniken/semantik)), z.B. `<div role="button">`: damit wird der `<div>`-Container, welcher vom Screenreader sonst ohne spezifische Rolle angesagt wird, als "Schalter" angesagt. (Tatsächlich hat ein `<div>` die Rolle "generic", aber diese wird eben nicht angesagt.)

Man kann die native Rolle auch überschreiben, z.B. `<a href role="button">`: damit wird der `<a href>`-Container, welcher sonst als "Link" angesagt wird, nun als "Schalter" angesagt.

Wichtig: Die Rolle eines Elements bestimmt nur, wie es vom Screenreader **angesagt** wird - und nicht, wie es sich **verhält**! Ein `<div role="button">` kann (im Gegensatz zu einem nativen `<button>`) z.B. weiterhin nicht fokussiert ([🏷️ Fokussierbarkeit](/de/tags/techniken/tastatur-fokus/fokussierbarkeit)) werden! Man kann zwar sein Verhalten durch weitere "Optimierungen" an einen nativen Schalter annähern, aber dies führt zu unnötig kompliziertem ("smelly") Code und oft zu unschönen Nebeneffekten. Deshalb gilt auch hier der Kodex: [🏷️ Nutze stets Standard-HTML!](/de/tags/umsetzungs-kodex/nutze-stets-standard-html)