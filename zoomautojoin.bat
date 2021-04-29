@echo off
title Auto Zoom Joiner
rem -------------------------------
color 0a
echo Going to correct folder.
echo %time%
set day=%DATE:~0,3%
IF %day% == Mon cd MO
IF %day% == Tue cd TU
IF %day% == Wed cd WE
IF %day% == Thu cd TH
IF %day% == Fri cd FR
rem -------------------------------
:Checker
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
echo Time now is: %mytime% on %day%
if exist %mytime%.bat (
    start %mytime%.bat
    echo The Meeting Has Started.
    ping localhost -n "61" >nul
)
cls
ping localhost -n "1" >nul
GOTO Checker
echo Error, Bottom Of Script.
pause
exit