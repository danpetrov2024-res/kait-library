@echo off
chcp 65001 >nul
rem Double-click, or drag the project folder onto this file.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0setup_kait.ps1" -Project "%~1"
echo.
pause
