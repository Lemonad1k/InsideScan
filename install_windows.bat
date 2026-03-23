@echo off
cd /d "%~dp0"

echo.
echo   InsideScan - Setup
echo   ==================
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo   Python not found. Downloading installer...
    echo.
    curl -L -o python_installer.exe https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe
    echo.
    echo   Running Python installer...
    echo   IMPORTANT: Check "Add Python to PATH" at the bottom of the installer!
    echo.
    python_installer.exe
    del python_installer.exe
    echo.
    echo   After Python is installed, run this script again.
    pause
    exit /b 0
)

echo   Python found
echo.
echo   Installing dependencies...
echo.

python -m pip install pynput websockets qrcode

echo.
echo   Done! Starting InsideScan...
echo.

python InsideScan.py
pause
