@echo off
::Modificar el script2 para realizar la misma operacion
::pero utilizando el for /d para visualizar las carpetas
::script2 crear carpetas con  nombre anualy un valor numerico
::que va de 1 a 10
cls
for %%n in (1 2 3 4 5 6 7 8 9 10 11 12) do (
if not exist %userprofile%\anual%%n (echo crea la carpeta anual%%n
md %userprofile%\anual%%n) else (
echo la carpe %userprofile%\anual%%n ya existe)
)
echo Vamos a ver las carpetas creadas
echo --------------------------------
for /d %%d in (a*) do (
echo %%d)
pause
exit
