---
mode: 'ask'
model: gpt-5
tools: ['codebase']
description: 'Finde konkrete Defekte in Audio-I/O, Resampling, Channel-Handling und WebUI-Ereignissen. Liefere Patch-Diffs.'
---

Ziel: **Audio-Bugs** systematisch finden und beheben (inkl. Audio-to-Audio Workflow).

**Scope**
- Primär: ${input:scope:Ordner/Dateien z. B. #acestep/gui.py, #acestep/models/lyric_utils, #acestep}
- Fokus (optional): ${input:focus:z. B. Resample/Rate-Mismatch, Mono↔Stereo, Pfad-Fehler, Blocking-Calls}

**Output**
1) **Fundliste (kurz)**
   - Datei → Problem (1 Satz) → Risiko (Low/Med/High) → Repro-Schritt.
2) **Fix-Patches (Unified-Diffs)**
   - Minimal-invasiv, inkl. Imports/Typen/Fehlerbehandlung.
   - Typische Fix-Typen: konsistentes Resampling, Kanal-Layout, robuste Pfad-Join/Exists, try/except mit Log.
3) **WebUI-Event-Map**
   - Button → Handler → Seiteneffekte (File I/O), markiere kaputte Verkettungen.
4) **Schnelltests**
   - 2–3 Mini-Snippets/Kommandos zum lokalen Prüfen.

**Regeln**
- Nur belegbare Bugs (keine Stilfragen).
- Keine destruktiven Änderungen. Fragen max. am Ende, wenn essenziell.
