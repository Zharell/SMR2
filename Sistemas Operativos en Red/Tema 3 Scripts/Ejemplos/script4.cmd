@echo off
::Tabla de multiplicar del número 8
setlocal enabledelayedexpansion
cls
echo tabla del 8
echo -----------
for /L %%u in (0,1,20) do (
set /a resul=8*%%u
echo 8 * %%u = !resul!)
pause
exit
