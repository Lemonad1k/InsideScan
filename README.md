# InsideScan

**EN** | [RU](#ru)

Local barcode scanner — iPhone/Android scans, result types as keyboard input on PC.

## Quick Start

**Mac:** Double-click `InsideScan.app`  
**Windows:** Double-click `install_windows.bat`

## Requirements

- Python 3.8+ (auto-installed on Windows)
- iPhone iOS 14+ or Android with Chrome
- Phone and PC on the same Wi-Fi network

## Usage

1. Run the app
2. Scan the QR code with your phone
3. Tap "Advanced" → "Proceed to site" (certificate warning is normal)
4. Point camera at barcodes — result types automatically

## Supported Formats

EAN-13, EAN-8, QR Code, Code 128, Code 39, DataMatrix, Aztec, PDF417, UPC-A, UPC-E and more.

## GS1 DataMatrix (Marking Codes)

GS character is automatically converted to **F8** keypress — compatible with МойСклад, АТОЛ, Эвотор.

## Settings (top of InsideScan.py)

```python
PORT         = 8765   # server port
PRESS_ENTER  = True   # send Enter after each scan
TYPE_DELAY   = 0.3    # delay before typing (sec)
KEY_INTERVAL = 0.03   # typing speed
```

## Emergency Stop

Move mouse to top-left corner of screen.

---

# RU

Локальный сканер штрихкодов — iPhone/Android сканирует, результат вводится как клавиатура на ПК.

## Быстрый старт

**Mac:** Двойной клик на `InsideScan.app`  
**Windows:** Двойной клик на `install_windows.bat`

## Требования

- Python 3.8+ (устанавливается автоматически на Windows)
- iPhone iOS 14+ или Android с Chrome
- Телефон и ПК в одной Wi-Fi сети

## Использование

1. Запусти приложение
2. Отсканируй QR-код телефоном
3. Нажми «Подробнее» → «Перейти на сайт» (предупреждение о сертификате — нормально)
4. Наведи камеру на штрихкод — код вводится автоматически

## Поддерживаемые форматы

EAN-13, EAN-8, QR Code, Code 128, Code 39, DataMatrix, Aztec, PDF417, UPC-A, UPC-E и другие.

## Маркировка (GS1 DataMatrix)

Символ GS автоматически преобразуется в нажатие **F8** — совместимо с МойСклад, АТОЛ, Эвотор.

## Настройки (начало файла InsideScan.py)

```python
PORT         = 8765   # порт сервера
PRESS_ENTER  = True   # Enter после каждого сканирования
TYPE_DELAY   = 0.3    # пауза перед вводом (сек)
KEY_INTERVAL = 0.03   # скорость печати
```

## Экстренная остановка

Переместить мышь в левый верхний угол экрана.
