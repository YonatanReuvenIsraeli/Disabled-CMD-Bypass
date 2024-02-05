@echo off
setlocal
title CMD.bat
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS IS A HACK! CONTINUE AT YOUR OWN RISK! WE HOLD NO RESPONSIBILITY FOR ANYTHING THAT HAPPEND, IS HAPPENING, AND/OR WILL HAPPEN BECAUSE OF THIS BATCH FILE!
goto :Disclaimer

:Disclaimer
echo.
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto :Start
if /i "%Disclaimer%"=="No" goto :Exit
echo Invalid Syntax!
goto :Disclaimer

:Start
cls
goto :CMD

:CMD
set Prompt="%cd%>"
set /p Command=%Prompt%
if /i "%Command%"=="cls" goto :cls
if /i "%Command%"=="exit" goto :Exit
%Command%
echo.
goto :CMD

:cls
cls
goto :CMD

:Exit
endlocal
exit
