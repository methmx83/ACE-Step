@echo off
:: Conda initialisieren (falls nötig)
call Z:\AI\software\miniconda3\Scripts\activate.bat


:: Deine Conda-Umgebung aktivieren (z.B. "myenv")
call conda activate acestep

:: Jetzt das Tool starten
acestep --checkpoint_path "Z:\AI\projects\.models\generative\music" --port 7865 --torch_compile true --cpu_offload true --overlapped_decode true

:: Pause, damit du Fehler sehen kannst, falls was schiefgeht
pause