@echo off
rem simulacion de matrix 
set /a v1=0
:matrix
color 0a
echo %v1% 11110000 1110000111 0000110001 00111 0011111
::set v1=%v1%+1
if %v1%==100 (pause & exit) else (set /a v1+=2)
goto matrix
echo no acabamos