@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo   ╔══════════════════════════════════╗
echo   ║       InsideScan  установка      ║
echo   ╚══════════════════════════════════╝
echo.

:: Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo   ❌  Python не найден.
    echo   Скачай с https://python.org
    echo   При установке отметь "Add Python to PATH"
    echo.
    pause
    exit /b 1
)

for /f "tokens=2" %%v in ('python --version') do set PYVER=%%v
echo   ✓  Python %PYVER% найден
echo.
echo   Устанавливаю зависимости...
echo.

python -m pip install --upgrade pip --quiet
python -m pip install pynput websockets qrcode --quiet

echo.
echo   ✓  Готово! Запускаю InsideScan...
echo.

python InsideScan.py
pause
