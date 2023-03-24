@echo off
setlocal enabledelayedexpansion
::Crear un menu de 4 opciones
::1 opcion crear usuarios
::2 opcion elimiar usuarios
::3 opcion crear una carpeta por cada usuarios existente
::4 opcion Salir
:menu
cls
echo ****************************
echo        Opciones del Menu
echo ****************************
echo a. Crear usuarios al sistema
echo b. Eliminar usuarios del sistema
echo c. Crear carpetas al los usuarios del sistema
echo e. salir
set /p op=Dime una letra a, b, c o e ...
if /i "%op%"=="e" (echo final del script&pause&exit)
if /i "%op%"=="a" goto usuarios
if /i "%op%"=="b" goto eliminar
if /i "%op%"=="c" goto carpetas
goto menu
:usuarios
cls
echo Procedemos a crear usuarios al sistema
echo ---------------------------------------
set /p numalumnos=Dime cuantos usuarios quieres crear...
for /L %%n in (1,1,%numalumnos%) do (
:seguir
set vlogin=""
set paso=""
set /p vlogin=Dime tu nombre inicio sesion ...
if "!vlogin!"=="" (echo Necesitamos un nombre de usuario&goto seguir)
set /P paso=Dime valor contraseña ...
if "!paso!"=="" (set paso=*)
net users !vlogin! !paso! /add > nul
)
net users
pause
goto menu
:eliminar
echo Procedemos a eliminar usuarios al sistema
echo ---------------------------------------
:seguir
net users
set vlogin=""
set /p vlogin=Dime tu nombre inicio sesion ...
if "!vlogin!"=="" (echo Necesitamos un nombre de usuario&goto seguir)
for /F "tokens=1-3 skip=4" %%a in ('net users') do (
if "%%a"=="!vlogin!" (set elogin=%%a)
if "%%b"=="!vlogin!" (set elogin=%%b)
if "%%c"=="!vlogin!" (set elogin=%%c)
)
set /p vsi=Estas seguro de eliminar !elogin! s/n 
if /i "%vsi%"=="S" (net users !elogin! /delete)
net users
pause

:carpetas
for /F "tokens=1-3 skip=4" %%a in ('net users') do (
if not exist %userprofile%\%%a md %userprofile%\%%a
if not exist %userprofile%\%%b md %userprofile%\%%b
if not exist %userprofile%\%%c md %userprofile%\%%c
)
dir /w
pause
goto menu