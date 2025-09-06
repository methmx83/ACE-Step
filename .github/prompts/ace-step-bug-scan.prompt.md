---
mode: 'ask'
model: gpt-5-mini
description: 'ACE-STEP Bug-Scan für Python-Dateien'
---
Lies die zuletzt geänderten Python-Dateien (#git) und erstelle:
1) Fehlerliste (mit Fundstelle)
2) Minimalfix (Patch oder Codeblock mit Pfad)
3) Folgeeffekte (Imports/Tests)
Nur dokumentierte Lösungen (Stand ≥ 06/2024). Kurze Quellenlinks.
