@echo off
set "CONDA_ROOT=Z:\AI\software\miniconda3"
set "ENV_NAME=acestep"
set "WORKDIR=Z:\AI\projects\music\ACE_STEP"

start "ACE-STEP" cmd /k ""%CONDA_ROOT%\Scripts\activate.bat" %ENV_NAME% && cd /d %WORKDIR% && echo Environment %ENV_NAME% activated in %WORKDIR%"