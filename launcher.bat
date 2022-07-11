@ECHO OFF
ECHO Open Host File = 1
ECHO Open Office Addins Folder = 2
ECHO Open SentTo Folder = 3 
ECHO Open Start Menu Folder = 4
ECHO Open Startup Folders = 5
ECHO Open Microsoft Word Startup Folder = 6
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
ECHO "%choice%" is not valid
ECHO.
GOTO start

:1
"Open Host File.bat"
exit

:2
"Open Office Addins Folder.bat"
exit

:3
"Open SentTo folder.bat"
exit

:4
"open start menu folder.bat"
exit

:5
"open startup folder.bat"
exit

:6 
"Open Word Startup Folder.bat"
exit