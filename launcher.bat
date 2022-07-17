@ECHO OFF
ECHO Open Host File = 1
ECHO Open Office Addins Folder = 2
ECHO Open SentTo Folder = 3 
ECHO Open Start Menu Folder (Current User) = 4
ECHO Open Start Menu Folder (Current User) = 5
ECHO Open Startup Folder (Current User) = 6
ECHO Open Startup Folder (All Users) = 7
ECHO Open Microsoft Word Startup Folder = 8
:start
SET choice=
SET /p choice=Choose Folder To Open [1-6]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO 1
IF '%choice%'=='2' GOTO 2
IF '%choice%'=='3' GOTO 3
IF '%choice%'=='4' GOTO 4
IF '%choice%'=='5' GOTO 5
IF '%choice%' == '6' GOTO 6
IF '%choice%' == '6' GOTO 7
ECHO "%choice%" is not valid
ECHO.
GOTO start

:1
attrib -r %WINDIR%\system32\drivers\etc\hosts
start notepad.exe %windir%\system32\drivers\etc\hosts
exit

:2
explorer.exe %AppData%\Microsoft\AddIns
exit

:3
explorer.exe %Appdata%\Microsoft\Windows\SendTo
exit

:4
explorer.exe %AppData%\Microsoft\Windows\Start Menu
exit

:5
explorer.exe C:\ProgramData\Microsoft\Windows\Start Menu
exit

:6
explorer.exe %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
exit

:7
explorer.exe C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
exit

:8
explorer.exe %AppData%\Microsoft\Word\STARTUP
exit