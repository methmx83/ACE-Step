---
mode: 'agent'
model: gpt-5
tools: ['codebase']
description: 'Coding-Agent: Branch, Tests zuerst, Fixes, Lints/Tests, PR.'
---

Ziel: **End-to-End Task** automatisiert durchführen. Beachte repo-weite Regeln & AGENTS.md.

**Auftrag**
1) Scope bestätigen: ${input:scope:Kurzaufgabe, z. B. 'Stabilisiere Audio-to-Audio Pfad'}.
2) Plan vorschlagen → Bestätigung abwarten.
3) Branch `feat/auto-${date:YYYYMMDD}-${random:4}` anlegen.
4) **Tests zuerst** ergänzen/aktualisieren.
5) Minimal-invasive Fixes implementieren.
6) Lint/Format/Test ausführen; Logs kurz sammeln.
7) Commits & PR mit Zusammenfassung.

**Regeln**
- Keine Geheimnisse leaken, .gitignore beachten.
- Abbruch bei roten Tests – Diagnose & Optionen liefern.
