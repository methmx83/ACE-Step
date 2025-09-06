---
mode: 'ask'
model: gpt-5
tools: ['codebase']
description: 'Erzeuge eine komplette ACE-Step-Übersicht: Struktur, Entry-Points, Pipelines, Configs, Risiken, To-Dos.'
---

Ziel: Erstelle eine **vollständige Projekt-Karte** für diese ACE-Step Codebase (#codebase). Fokus auf **Nutzung/Workflow/Fehleranalyse** (kein Training).

**Liefere in dieser Reihenfolge:**
1) **Repo-Übersicht**
   - Sprachen (%), Top-Ordner, Schlüsselfiles (README, LICENSE, .env.example, CI).
2) **Entry-Points & Laufpfade**
   - Hauptstarts (z. B. Gradio/WebUI), CLI-Skripte, Inferenz-Pipelines.
   - Verlinke Stellen über Datei-Referenzen (z. B. `#acestep/gui.py:1-80`).
3) **ACE-Step-spezifische Artefakte**
   - Erkennen & kurz beschreiben, wo existiert:
     - `pipeline_ace_step.py`, `text2music_dataset.py`, `gui.py.py`, `apg_guidance.py`, `schedulers/`, `models/`, `lyric_encoder.py` `lyrics_utils/` `music_dcae/`. 
     - Audio-Frontends (torchaudio/librosa), Pre/Post-Processing (Resample, Stereo/Mono, dBFS, Normalisierung).
4) **WebUI (Gradio)**
   - Tabs/Buttons → Funktionen (Event-Map: Button → Handler → File I/O).
   - Zustände/State-Objekte, Pfad-Handling, statische Assets (Hintergrundbilder, CSS).
5) **Configs & Precision**
   - Fundorte (settings.json/pyproject.toml/.env). Hinweis, ob BF16/FP16/CPU fallback benutzt wird; wo Precision gesetzt wird.
6) **Abhängigkeiten & Versionen**
   - Kernlibs je Sprache; potentielle Konflikte (z. B. torch↔torchaudio Version Pairs).
7) **Hot Paths & Risiken**
   - I/O-Hotspots, VRAM/RAM-Spitzen, Batch/Chunking, Scheduler-Auswahl, Timeouts, Fehlerbehandlung.
8) **To-Do-Backlog (priorisiert)**
   - Quick Wins (1–2 h), Mids (1–2 Tage), Groß (1–2 Wochen).
9) **Offene Fragen** (max. 5)
   - Nur, wenn Info fehlt, um kritische Entscheidungen zu treffen.

**Formatregeln**
- **Keine langen Codekopien** – nutze kompakte Datei/Symbol-Referenzen: `#pfad:zeilen`, `#symbol:Name`.
- Maximiere Querverweise (wer ruft wen?).
- Wenn die Codebasis riesig ist: Top-50 Fundstellen detailliert, Rest stichpunktartig.
