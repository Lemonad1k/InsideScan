#!/bin/bash
cd "$(dirname "$0")"

echo ""
echo "  ╔══════════════════════════════════╗"
echo "  ║       InsideScan  установка      ║"
echo "  ╚══════════════════════════════════╝"
echo ""

# Check Python
if ! command -v python3 &>/dev/null; then
    echo "  ❌  Python3 не найден."
    echo "  Скачай с https://python.org и запусти установщик снова."
    read -p "  Нажми Enter для выхода..." 
    exit 1
fi

echo "  ✓  Python $(python3 --version | cut -d' ' -f2) найден"
echo ""
echo "  Устанавливаю зависимости..."
echo ""

python3 -m pip install --upgrade pip --quiet
python3 -m pip install pynput websockets qrcode --quiet

echo ""
echo "  ✓  Готово! Запускаю InsideScan..."
echo ""

python3 InsideScan.py
