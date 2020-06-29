@Echo off
cls
Set "Path=%Path%;%cd%;%CD%\files"

Title Brieflz DEMO - www.thebateam.org

Set "File=Demo.blz"

Color 07
Echo.
Echo. Compressed File Name: "%File%"
echo.
brieflz -d "%file%" "TheBATeam LOGO - Uncompressed.png"

If /I "%Errorlevel%" NEQ "0" (Color 0C&&Echo. ERROR OCCURRED. &&Goto :End)
Color 0A
Echo. Uncompressing....
Echo. Done!
Echo.
Echo.
Echo. Check if the Uncompressed file is Generated in the Same Folder?
Echo. Try opening it, Press any Key to Exit...

:End
Pause>nul

Exit