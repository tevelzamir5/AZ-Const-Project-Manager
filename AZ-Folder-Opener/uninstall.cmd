@echo off
reg delete "HKCU\Software\Classes\azfolder" /f >nul 2>&1
rmdir /S /Q "%LOCALAPPDATA%\AZFolderOpener" >nul 2>&1
echo Removed.
pause
