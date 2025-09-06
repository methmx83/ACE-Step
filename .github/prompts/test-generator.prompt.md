---
mode: 'ask'
model: gpt-5-mini
tools: ['codebase']
description: 'Erzeuge fokussierte Unit-Tests mit realistischen Fixtures und klaren Arrange-Act-Assert-Blöcken.'
---

Ziel: **Tests erzeugen** für ${input:files:Zieldateien/Symbole}, Framework: ${input:framework:z. B. pytest, unittest, vitest}.

**Liefere**
1) **Testmatrix**: Was wird abgedeckt (Happy/Edge/Error Cases), warum wichtig.
2) **Testdateien**: Vollständige Test-Cases als Codeblöcke, sauber benannt.
3) **Fixtures/Factories**: Realistische Dummy-Daten, deterministisch (Seeds).
4) **Ausführung**: Befehle zum Run (inkl. Coverage-Flag), erwartete Ergebnisse.
5) **Lücken**: Was bleibt ungetestet + kurze Empfehlung.

**Regeln**
- Kein übermäßiges Mocken; echte I/O nur wenn erforderlich.
- KISS: Kleine, schnelle Tests, klare Assertions.
