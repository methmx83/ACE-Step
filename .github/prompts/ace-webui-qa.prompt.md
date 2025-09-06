---
mode: 'ask'
model: gpt-5-mini
tools: ['codebase']
description: 'Gradio-Verkabelung verifizieren: Events, States, Pfade, statische Assets – mit Fix-Patches.'
---

Ziel: **WebUI stabilisieren**.

**Liefere**
1) **Event-Map**
   - Komponenten → Events → Handler → Nebenwirkungen (File I/O).
2) **Path/Asset-Check**
   - Statische Dateien (Bilder/CSS), build/serve-Pfade, 404-Fallen.
3) **State/Session**
   - Welche States existieren? Persistenz? Reset-Logik?
4) **Fehlerbild-Korrelation**
   - Mapping typischer Nutzerfehler → vermutete Code-Stelle.
5) **Patches**
   - Kleine Unified-Diffs je Problem (Pfad-Fixes, exist checks, MIME, async-Sorgfalt).

**Regeln**
- Kein Redesign – nur Stabilität & Klarheit.
