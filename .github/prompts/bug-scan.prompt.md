---
mode: 'ask'
model: gpt-5
tools: ['codebase']
description: 'Finde Defekte/Edge-Cases und liefere präzise Fix-Patches als Unified-Diffs.'
---

Ziel: Führe einen **zielgerichteten Bug-Scan** auf #codebase durch.

**Scope**
- Primärer Suchbereich: ${input:scope:Ordner/Dateien z. B. src/audio or #file:src/audio/pipeline.py}
- Fokus (optional): ${input:focus:z. B. I/O-Fehler, Exceptions, Off-by-one, Nebenläufigkeit, Security}
- Sprache(n): automatisch aus Codebasis bestimmen.

**Output (in dieser Reihenfolge)**
1) **Fundliste**: Datei → Problem (1 Satz) → Risiko (Low/Med/High) → wie reproduzieren.
2) **Fix-Patches**: Für jeden Fund ein **Unified-Diff** mit minimal-invasiver Änderung (inkl. Imports/Typen/Fehlerbehandlung).
3) **Regression-Risiken**: kurze Stichpunkte.
4) **Schnelle Checks**: Mini-Snippets/Kommandos zum lokalen Test.

**Regeln**
- Keine Stilkriege. Liefere nur belegbare Bugs/Edge-Cases.
- Wenn du unsicher bist, stelle maximal 3 Klarstellungsfragen am Ende.
