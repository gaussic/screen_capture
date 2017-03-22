@echo off
if not exist "C:\screens\" mkdir C:\screens
set /p count=<localcount.txt

set /a count=%count% + 1

@echo %count% >localcount.txt

set /a scount = 1

if not exist "C:\screens\%count%" mkdir C:\screens\%count%

:loop

timeout 1 >nul

call screenCapture C:\screens\%count%\%scount%.png

set /a scount=%scount% + 1

goto loop
