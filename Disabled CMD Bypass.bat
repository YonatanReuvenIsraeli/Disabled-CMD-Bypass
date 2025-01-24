@echo off
setlocal
title Disabled CMD Bypass
echo Program Name: Disabled CMD Bypass
echo Version: 2.1.9
echo License: GNU General Public License v3.0
echo Developer: @YonatanReuvenIsraeli
echo GitHub: https://github.com/YonatanReuvenIsraeli
echo Sponsor: https://github.com/sponsors/YonatanReuvenIsraeli
goto "Disclaimer"

:"Disclaimer"
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSE'S PC WITHOUT THEIR EXPLICIT PERMISSION! THIS IS A HACK! CONTINUE AT YOUR OWN RISK! @YonatanReuvenIsraeli HOLDS NO RESPONSIBILITY FOR ANYTHING THAT HAPPEND, IS HAPPENING, AND/OR WILL HAPPEN BECAUSE OF THIS BATCH FILE!
echo.
set Disclaimer=
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto "Start"
if /i "%Disclaimer%"=="No" goto "Exit"
echo Invalid syntax!
goto "Disclaimer"

:"Start"
cls
goto "CMD"

:"CMD"
set PromptText="%cd%>"
set Command=
set /p Command=%PromptText%
if /i "%Command%"=="cls" goto "cls"
if /i "%Command%"=="exit" goto "Exit"
%Command%
echo.
goto "CMD"

:"cls"
cls
goto "CMD"

:"Exit"
endlocal
exit
