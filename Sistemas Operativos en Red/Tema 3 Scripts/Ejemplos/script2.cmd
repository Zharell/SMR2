@echo off
::crear carpeta con el nombre anualnn,donde nn es un numero
::que va 1 a 10. Antes de crear carpeta hay que ver si no existe.
::Necesitamos una variable contador y establecer limite 10.
cls
set /a v1=0
:seguir
if %v1% lss 10 (set /a v1+=1) else (goto fin)
if not exist %userprofile%\anual%v1% (echo vamos a crear la carpeta anual%v1%
			md %userprofile%\anual%v1%)else (echo la carpeta anual%v1% ya exixte)
goto seguir
:fin 
echo Mostrar las carpetas creadas
echo ----------------------------
dir a*
pause 
exit