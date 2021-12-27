@echo off
attrib -r %WINDIR%\system32\drivers\etc\hosts
start notepad.exe %windir%\system32\drivers\etc\hosts
exit