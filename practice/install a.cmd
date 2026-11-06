@echo off
chcp 65001 >nul
rem Double-click, or drag the project folder onto this file.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" "%~1"
echo.
pause
