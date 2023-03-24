@echo off
::Calcular la letra del dni de una persona fisica
::DIVIDIR PARTE NUMERICA ENTRE 23 Y QUEDARNOS CON EL RESTO
::SACAR DE LA LISTA DE LETRAS, LA LETRA QUE OCUPA LA POSICION
::DEL RESTO
setlocal enabledelayedexpansion
set letras=TRWAGMYFPDXBNJZSQVHLCKE
set /p vdni=Dime el valor de tu dni ...
set sinum=0
::comprobar primer caracter dni es numero
for %%a in (0 1 2 3 4 5 6 7 8 9) do (
if %vdni:~0,1%==%%a (set sinum=1)
)
set siletra=0
::comprobar primer caracte en una letra valida para dni
for %%a in (L K V X Y Z) do (
if /i %vdni:~0,1%==%%a (set siletra=1)
)
if %sinum%==1 goto calcular1 
if %siletra%==1 goto calcular2
if %siletra%==0 (if %sinum%==0 (echo Valor dni no valido))
goto fin
:calcular1
set /a cociente=%vdni%/23
set /a resto=%vdni%-(%cociente%*23)
set codigo=!letras:~%resto%,1!
echo la letra de mi dni es %vdni%-%codigo%
goto fin
:calcular2
set /a cociente=%vdni:~1%/23
set /a resto=%vdni:~1%-(%cociente%*23)
set codigo=!letras:~%resto%,1!
echo la letra de mi dni es %vdni%-%codigo%
goto fin
:fin
echo Fin calculo dni
pause 

