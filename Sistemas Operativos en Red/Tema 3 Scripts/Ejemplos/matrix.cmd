@echo off
rem simulacion de matrix 
:matrix
color 0a
echo 11110000 1110000111 0000110001 00111 0011111
::set v1=%v1%+1
set /a v1+=1
if %v1%==25 (pause & exit)
goto matrix
echo no acabamos