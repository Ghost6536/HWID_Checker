@echo off
:RF
color 0b
title %computername%    Made by Umbrella Corporation                                                                                                                                                                    Ghost?#6536
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #`$H#$`E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:variables
set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
:: Webhook
SET webhook=

cls

cls
chcp 437>nul
echo %w%Choose a Colour.%u%
echo %b%1 = Blue%u%, %d%2 = Cyan%u%, %g%3 = Green%u%, %y%4 = Yellow%u% or %r%5 = Red%u%.
set /p preset=
if /i %preset%==1 goto Blue
if /i %preset%==2 goto Cyan
if /i %preset%==4 goto Yellow
if /i %preset%==3 goto Green
if /i %preset%==5 goto Red
cls
echo %c%Please enter a valid option.
timeout /t 1 /nobreak >nul 2>&1 
goto :menu
:Blue
set c=%b%
set u=%u%
set d=%n%
goto menu

:Yellow
set c=%y%
set u=%u%
set d=%n%
goto menu

:Green
set c=%g%
set u=%u%
set d=%n%
goto menu

:Cyan
set c=%d%
set u=%u%
set d=%d%
goto menu

:Red
set c=%r%
set u=%u%
set d=%r%
goto menu
cls
:menu
echo.
echo.

cls
echo.
echo.
echo   [%c%1%u%] UUID
echo   [%c%2%u%] HDD
echo   [%c%3%u%] CPU
echo   [%c%4%u%] BIOS
echo   [%c%5%u%] DISK
echo   [%c%6%u%] MotherBoard
echo   [%c%7%u%] IPv4 + IP
echo   [%c%8%u%] MACAddress
echo   [%c%9%u%] Refresh
echo   [%c%111%u%] ALL
echo.
echo.
echo.
echo.
set /p M="%c%Choose an option »%u%"
if %M%==1 goto A
if %M%==2 goto B
if %M%==3 goto C
if %M%==4 goto D
if %M%==5 goto E
if %M%==6 goto F
if %M%==7 goto K
if %M%==8 goto T
if %M%==9 goto O
if %M%==111 goto 112
cls

:O
goto :RF
cls
:A
cls
echo.%b%------- UUID --------
echo.%g%
wmic path win32_computersystemproduct get uuid
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:B
cls
echo.%b%--------- HDD ----------
echo.%g%
wmic diskdrive get serialNumber
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:C
cls
echo.%b%--------- CPU ----------
echo.%g%
wmic memorychip get serialnumber
wmic CPU Get DeviceID,NumberOfCores,NumberOfLogicalProcessors
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:D
cls
echo.%b%-------- BIOS ----------
echo.%g%
wmic bios get serialnumber
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:E
cls
echo.%b%-------- DISK ----------
echo.%g%
wmic diskdrive get model
wmic diskdrive get size
wmic diskdrive get mediaType
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:F
cls
echo.%b%-------- MOBO ----------
echo.%g%
wmic baseboard get serialnumber
wmic bios get version
wmic csproduct get name
wmic os get version
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:K
cls
echo.%b%--------- IPv4 ---------
echo.%g%
ipconfig /all | findstr /r /c:"IPv4"
echo.%b%---------- IP ----------
echo.%g%
curl ip-adresim.app
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:T
cls
echo.%b%==========================================================================
echo.%g%
wmic path Win32_NetworkAdapter get name, MacAddress
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul 2>&1 
goto menu
:112
cls
echo.%b%------- UUID --------
echo.%g%
wmic path win32_computersystemproduct get uuid
echo.%b%--------- HDD ----------
echo.%g%
wmic diskdrive get serialNumber
echo.%b%--------- CPU ----------
echo.%g%
wmic memorychip get serialnumber
wmic CPU Get DeviceID,NumberOfCores,NumberOfLogicalProcessors
echo.%b%-------- BIOS ----------
echo.%g%
wmic bios get serialnumber
echo.%b%-------- DISK ----------
echo.%g%
wmic diskdrive get model
wmic diskdrive get size
wmic diskdrive get mediaType
echo.%b%-------- MOBO ----------
echo.%g%
wmic baseboard get serialnumber
wmic bios get version
wmic csproduct get name
wmic os get version
echo.%b%--------- IPv4 ---------
echo.%g%
ipconfig /all | findstr /r /c:"IPv4"
echo.%b%---------- IP ----------
echo.%g%
curl ip-adresim.app
echo.%b%------------------------
wmic path Win32_NetworkAdapter get name, MacAddress
echo %g%======Press Any Key To Refresh======
pause >nul 2>&1 
goto menu