@echo off
rem Pedir por nombre y edad 
::A variable edad +50 , mensaje de salida
::Hola, nnnn tienes ee anios y dentro de 50 tendre ee anios
::if edad+50 < 60 Te quedan anios para jubilarte , edad+50 =60 Puedes ir a informate por si te llevas una alegria y > 60 Ya estas disfrutando de los benecifios de la jubilacion
cls
set /p nombre=Dime tu nombre completo ....
set /p edad=Dime tu edad .... 
set /a vedad=%edad%+50
echo hola %nombre%, tienes %edad% anios y dentro de 50 tendre %vedad%
if %vedad% lss 60 echo Te quedan anios para jubilarte
if %vedad% equ 60 echo Ya puede ir a informate por si te llevas una alegria
if %vedad% gtr 60 echo ya estas disfrutando de los beneficios de la jubilacion
pause
exit
