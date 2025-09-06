---
mode: 'agent'
model: gpt-5
tools: ['codebase']
description: 'Coding-Agent: erstelle Branch, füge/aktualisiere Tests, fixe Fehler, führe Lints/Tests aus, öffne PR mit Zusammenfassung.'
---

Ziel: **End-to-End Feature-/Fix-Task** automatisiert durchführen. **Beachte AGENTS.md** und repo-weite Custom-Instructions.

**Auftrag**
1) Bestätige Scope: ${input:scope:Kurzbeschreibung der Aufgabe (z. B. "Stabilisiere Key-Detection für Halbtonfälle")}.
2) **Plan vorschlagen** (Schritte, Dateien, Risiken). Warte auf Bestätigung.
3) Erstelle Branch `feat/auto-${date:YYYYMMDD}-${random:4}`.
4) Suche betroffene Stellen (#codebase), aktualisiere/ergänze **Tests zuerst**.
5) Implementiere Fixes minimal-invasiv.
6) Führe Lint/Format/Test aus. Sammle Logs (kurz).
7) Erzeuge Commit(s) mit sinnvollen Messages.
8) Öffne PR inkl. Zusammenfassung (Was/Warum/Risiken/Tests/Follow-ups).

**Regeln**
- **Immer bestätigen**, bevor du Änderungen vornimmst oder Kommandos ausführst.
- Respektiere `.github/copilot-instructions.md` und `AGENTS.md`.
- Keine Geheimnisse leaken; beachte .gitignore und Content-Exclusion.
- Abbruch, wenn Tests rot bleiben – liefere Diagnose & Optionen.

**Output**
- Kompakte Statusupdates je Schritt.
- Link/Referenzen zu geänderten Dateien und Test-Ergebnissen.
