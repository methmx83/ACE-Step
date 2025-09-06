---
mode: 'ask'
model: gpt-5
tools: ['codebase']
description: 'Sequenzieller Refactor-Plan für ACE-Step-Module mit Backout-Plan & Akzeptanzkriterien.'
---

Ziel: **Schrittweises Entkoppeln** von ACE-Step-Kernmodulen.

**Liefere**
1) **Ist-Zustand (kurz)**
   - Verantwortungen, Kopplung, Anti-Patterns (z. B. God-Files).
2) **Zielbild**
   - Öffentliche APIs, klare Modulgrenzen, Data-Flow.
3) **Migration in Sequenzen (5–8 Schritte)**
   - Änderung, betroffene Dateien (#pfad), Risiko/Backout, Akzeptanz.
4) **Beispiel-Patches** (Step 1–2) als Unified-Diffs.
5) **Follow-ups**
   - Tests, Telemetrie, Docs.
