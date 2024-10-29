---
id: "26"
parent_id: "70"
created_at: "2024-03-09 14:27:22"
---

# 🏷️ Inhalte komplett verstecken (display: none)

## Description

Mit `display: none` werden Inhalte komplett (also vor allen Nutzern) versteckt. Sie befinden sich zwar weiterhin im DOM ([🏷️ Document Object Model (DOM)](/en/tags//document-object-model-dom)), werden aber weder visuell angezeigt noch vom Screenreader angesagt (sie verschwinden also auch aus dem Accessibilty Tree [🏷️ Accessibility Tree](/en/tags/document-object-model-dom/accessibility-tree)).

Ähnliches gilt für `visibility: hidden`: dies hat fast denselben Effekt, "reserviert" aber visuell weiterhin den Platz, welcher das versteckte Element beanspruchen würde, wenn es wieder eingeblendet wird (dies kann wichtig sein bei Animationen wie ein-/ausblenden).