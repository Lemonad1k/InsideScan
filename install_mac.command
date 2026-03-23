#!/bin/bash
# Fix own permissions first
chmod +x "$0"
cd "$(dirname "$0")"

echo ""
echo "  InsideScan - Setup"
echo "  =================="
echo ""

# Check Python
if ! command -v python3 &>/dev/null; then
    echo "  Python3 not found."
    echo "  Download from https://python.org"
    echo ""
    read -p "  Press Enter to exit..."
    exit 1
fi

echo "  Python $(python3 --version | cut -d' ' -f2) found"
echo ""
echo "  Installing dependencies..."
echo ""

python3 -m pip install --upgrade pip --quiet
python3 -m pip install pynput websockets qrcode cryptography --quiet

echo ""
echo "  Done! Starting InsideScan..."
echo ""

python3 InsideScan.py
