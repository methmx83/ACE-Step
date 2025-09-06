---
mode: 'ask'
model: gpt-5
tools: ['codebase']
description: 'Erstelle einen schrittweisen Refactoring-Plan mit Risiken, Migrationsschritten und optionalen Patches.'
---

Ziel: Entwirf einen **inkrementellen Refactor-Plan** für ${input:target:Zielmodul/Subsystem}, ohne Funktionalität zu brechen.

**Liefere**
1) **Ist-Zustand kurz** (Verantwortungen, Kopplung, anti-patterns).
2) **Zielbild** (Module, klare Grenzen, öffentliche APIs).
3) **Migrationsstrategie** in **Sequenzen** (max. 5–8 Schritte), jeweils:
   - Änderung
   - betroffene Dateien (#pfad)
   - Risiko/Backout-Plan
   - Akzeptanzkriterien
4) **Konkrete Patches (optional)** als Unified-Diffs für Step 1–2.
5) **Follow-ups**: Tests, Telemetrie, Docs.

**Regeln**
- Bewahre bestehende Public-APIs, wenn nicht anders gefordert.
- Markiere Breaking Changes deutlich.
