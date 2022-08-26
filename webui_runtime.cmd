@echo off
cd /d %~dp0

Reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "1" /f 2>nul
IF EXIST CONDA GOTO APP

:INSTALL
call update_runtime

:APP
set SETUPTOOLS_USE_DISTUTILS=stdlib
call conda\condabin\activate.bat ldm
IF EXIST "models\ldm\stable-diffusion-v1\model.ckpt" (
  python scripts/relauncher.py
) ELSE (
  ECHO Your model file does not exist! Place it in 'models\ldm\stable-diffusion-v1' with the name 'model.ckpt'.
)
pause