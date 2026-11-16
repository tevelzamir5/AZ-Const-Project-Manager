@echo off
set "DEST=%LOCALAPPDATA%\AZFolderOpener"
if not exist "%DEST%" mkdir "%DEST%"
copy /Y "%~dp0open-folder.js" "%DEST%\open-folder.js" >nul
reg add "HKCU\Software\Classes\azfolder" /ve /d "URL:A.Z Construction folder" /f >nul
reg add "HKCU\Software\Classes\azfolder" /v "URL Protocol" /d "" /f >nul
reg add "HKCU\Software\Classes\azfolder\shell\open\command" /ve /d "wscript.exe \"%DEST%\open-folder.js\" \"%%1\"" /f >nul
echo.
echo Done! "Open folder" buttons in the A.Z Construction platform will now open folders on this computer.
echo.
pause
