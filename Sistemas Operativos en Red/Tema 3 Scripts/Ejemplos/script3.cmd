@echo off
::Crear un archivo en las carpetas indicadas en el comando for
cls
set /p carpeta=Dime el nombre de una carpeta que exista ...
for %%a in (%userprofile% %carpeta% %userprofile%\desktop) do (
echo Vamos a proceder a crear el archivo docufor.txt en la carpeta %%a
pause
notepad %%a\docufor.txt
dir %%a)
pause
exit