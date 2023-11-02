@echo  off
set /P PORT=Enter PORT:
@echo on
".\platform-tools\adb.exe" kill-server
".\platform-tools\adb.exe" connect localhost:%PORT%
cd .\
REM pip install --upgrade pip
REM pip install Pillow==8.4.0
REM pip install opencv-python==4.6.0.66
REM pip install -r requirements.txt
python -W ignore roktracker.py
PAUSE
