# InsideScan

Local barcode scanner — iPhone/Android scans, result types as keyboard on PC.

## Mac

1. Open Terminal (Cmd+Space → "Terminal")
2. Drag the folder into Terminal and press Enter
3. Run:
```
chmod +x install_mac.command && ./install_mac.command
```

Or right-click `install_mac.command` → **Open** → click Open in the dialog.

## Windows

Double-click `install_windows.bat`

## Requirements

- Python 3.8+ (auto-installed on Windows)
- iPhone iOS 14+ or Android with Chrome
- Phone and PC on the same Wi-Fi

## Usage

1. Run the script
2. Scan the QR code with your phone
3. Tap "Advanced" → "Proceed" (certificate warning is normal)
4. Point camera at barcodes

## Supported formats

EAN-13, EAN-8, QR, Code128, Code39, DataMatrix, Aztec, PDF417, UPC and more.

## GS1 DataMatrix (marking codes)

GS character is automatically converted to **F8** — compatible with МойСклад, АТОЛ, Эвотор.

## Settings (top of InsideScan.py)

```python
PORT         = 8765   # server port
PRESS_ENTER  = True   # Enter after each scan
TYPE_DELAY   = 0.3    # delay before typing (sec)
KEY_INTERVAL = 0.03   # typing speed
```
