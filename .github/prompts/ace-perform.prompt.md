---
mode: 'ask'
model: gpt-5-mini
tools: ['codebase']
description: 'Profiling-Plan + VRAM/RAM-Bremsspuren finden (ACE-Step Inferenz), mit Mess-Snippets & minimalen Patches.'
---

Ziel: **Inferenz-Performance & Speicher** optimieren – ohne Verhalten zu ändern.

**Liefere**
1) **Hot-Path-Skizze**
   - Wo entstehen CPU/RAM/VRAM-Spitzen? (Lader, Resample, Feature-Extract, Scheduler-Schritte, Chunking).
2) **Messplan**
   - Mess-Snippets (Zeit/Peak-RAM/VRAM), wo einfügen.
   - Kurze Anleitung für reproduzierbare Runs (Seeds/Inputs).
3) **Bremsspuren & Quick-Fixes**
   - I/O-Batching, Lazy-Load, Streaming-Reads, konsistentes dtype/precision, kontrollierte Device-Transfers.
   - Kleine **Patch-Diffs** je Fundstelle.
4) **Risiken/Trade-offs**
   - Was wird langsamer/speichernd, welche Grenzfälle?
5) **Checkliste (12 GB)**
   - Ordnung der Schritte, Speicherfreigabe, no-grad-Blöcke, Logging-Level, große Objekte nach Gebrauch droppen.

**Regeln**
- Keine API-Magie ohne Doku. Halte Änderungen minimal.
