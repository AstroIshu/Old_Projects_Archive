@echo off

:home

title Road Trip by Numbers!

color 0f

cls

echo.

echo Welcome to Road Trip! What are the names of the people in your group

echo.

set /p name1=

set /p name2=

set /p name3=


set /p name4=

echo.

echo Road trips require lots of stuff! What stuff would you like?

echo.

echo 1) Sandwich

echo 2) Ammunition 

echo 3) Water 

echo 4) Band-Aids

set /p web=

if %web% == goto start

if %web% == goto start

if %web% == goto start

if %web% == goto start

echo.

pause

:start

cls

echo.

echo where do you want to go?

echo.

echo 1)New York

echo 2)Delhi

echo 3)Canada


echo 4)Station

set /p game=

if %game% == 1 goto new

if %game% == 1 goto color

if %game% == 1 goto cana

if %game% == 1 goto station

pause

:station

cls

echo.

echo you got into a car crash

pause

exit

:new

cls

echo Some angry race car drivers pass you and %name4% wants to go as fast as them do you go as fast as them

echo.

echo yes

echo no

echo.

set /p meh=

if %meh% == yes goto death

if %meh% == no goto fit


:color

:cana

:fit

echo %name4% Is throwing a fit

pause

:death

cls

echo you died due to heart attack

pause

exit