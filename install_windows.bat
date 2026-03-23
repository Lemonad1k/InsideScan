@echo off
cd /d "%~dp0"

echo.
echo   InsideScan - Setup
echo   ==================
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo   Python not found. Downloading...
    curl -L -o python_installer.exe https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe
    echo   Installing Python silently...
    python_installer.exe /quiet InstallAllUsers=0 PrependPath=1 Include_test=0
    del python_installer.exe
    echo   Python installed. Continuing...
    :: Refresh PATH
    call refreshenv >nul 2>&1
    set "PATH=%PATH%;%LOCALAPPDATA%\Programs\Python\Python312;%LOCALAPPDATA%\Programs\Python\Python312\Scripts"
)

echo   Installing dependencies...
python -m pip install pynput websockets qrcode cryptography --quiet

echo.
echo   Done! Starting InsideScan...
echo.

python InsideScan.py
pause
