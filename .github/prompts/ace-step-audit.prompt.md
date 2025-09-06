---
mode: 'ask'
model: gpt-5-mini
tools: ['codebase']
description: 'Erzeuge eine vollständige Projekt-Karte (Struktur, Entry-Points, Abhängigkeiten, Risiken, To-Dos) für dieses neue Workspace.'
---

Ziel: Führe eine **umfassende Projekt-Recherche** über die gesamte Codebase durch (#codebase). Antworte präzise, knapp, gliedere strikt.

**Liefere die folgenden SEKCIONEN (in dieser Reihenfolge):**
1) **Repo-Übersicht**
   - Sprachen (%), Zeilenzahl grob, Top-Ordner, wichtige Artefakte (README, LICENSE, CI, Docker, devcontainer, .env.example).
2) **Entry-Points & Laufpfade**
   - CLI-Starts, Main-Module, Server/Apps, Pipelines, Skripte. Verlinke Fundstellen mit Datei-Referenzen (z. B. `#path/to/app.py:1-60`).
3) **Konfiguration & Secrets**
   - Woher kommen Settings (env, config files, pyproject.toml, package.json)? Welche Default-/Fallback-Werte?
4) **Abhängigkeiten**
   - Kern-Libs pro Sprache (z. B. Python: requirements/pyproject; JS: package.json), kritische Versionen, pot. Konflikte. Hinweis, wo Upgrades riskant sind.
5) **Architekturkarte (kompakt)**
   - Module → Verantwortungen → Hauptklassen/Funktionen; Inbound/Outbound-Schnittstellen.
6) **Hot Paths & Risiken**
   - I/O, Netzwerk, CPU/Memory-Hotspots, fehlende Fehlerbehandlung/Timeouts, pot. Race-Conditions.
7) **Test-/Build-Realität**
   - Wie baut/ startet/ testet man das Projekt (aus README/Skripten). Fehlende Steps benennen.
8) **To-Do-Backlog (priorisiert)**
   - Quick Wins, Mittelfristig, Groß.
9) **Offene Fragen**
   - Max. 5 gezielte Fragen, die gelöst werden müssen, bevor große Refactors starten.

**Formatregeln**
- Nutze **präzise Datei-/Symbol-Referenzen** (`#pfad:zeilen` bzw. `#symbol:Name`), keine langen Codekopien.
- Keine destruktiven Vorschläge; nur Analyse & Plan.
- Falls Codebasis extrem groß ist: „Top 50“ Fundstellen priorisieren, Rest stichpunktartig erwähnen.

**Optionaler Input**
- Projektziel: ${input:goal:Kurzbeschreibung des Projektziels (optional)}
- Kritische Pfade/Ordner: ${input:scope:Ordner/Dateien mit Priorität (optional)}
