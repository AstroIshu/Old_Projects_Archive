@echo off
color 0c
title TOTAL WAR!!!
echo.
echo Welcome to Total War, created by Ishant
echo.
pause
:players
cls
set player=
set replay=
echo.
set /p player=Select 1 or 2 player mode:
if '%player%'=='1' goto name
if '%player%'=='2' goto p1name
goto players
:name
cls
set name=
echo.
set /p name=Please type in your name (One word):
if '%name%'=='' goto name
rem Easter Egg:
if '%name%'=='Ishant' goto win
:country
cls
set country=
set enemy=
echo.
echo Welcome %name%!
echo.
set /p country=Choose your country; USA, India, or China:
if '%country%'=='usa' goto enemy1
if '%country%'=='USA' goto enemy1
if '%country%'=='Usa' goto enemy1
if '%country%'=='India' goto enemy2
if '%country%'=='india' goto enemy2
if '%country%'=='cahina' goto enemy3
if '%country%'=='China' goto enemy3
goto country
:enemy1
set country=USA
goto enemy
:enemy2
set country=India
goto enemy
:enemy3
set country=China
:enemy
set /a cpucountryrand=%random% %%5 +1
if '%cpucountryrand%'=='0' goto enemy
if '%cpucountryrand%'=='1' set enemy=India
if '%cpucountryrand%'=='2' set enemy=USA
if '%cpucountryrand%'=='3' set enemy=China
if '%cpucountryrand%'=='4' goto enemy
if '%cpucountryrand%'=='5' goto enemy
if '%enemy%'=='%country%' goto enemy
:begin
set user=1000
set cpu=1000
set laser=1
set airstrike=2
set missiles=3
set cpulaser=1
set cpuairstrike=2
set cpumissiles=3
:gameplay
cls
set move=
set choice=
set cpucount=0
echo.
echo %name%, your turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire Laser x %laser%
echo.
echo 2. Fire Airstrike x %airstrike%
echo.
echo 3. Fire Missiles x %missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto laser
if '%move%'=='2' goto airstrike
if '%move%'=='3' goto missiles
if '%move%'=='4' goto surrender
if '%move%'=='5' goto cpu1
goto gameplay
:laser
cls
if '%laser%'=='0' goto nolaser
echo.
echo %name% has fired a Laser headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 400 DEF!
echo.
pause
set /a cpu=%cpu% - 400
set laser=0
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nolaser
echo.
echo You can't use a laser since you don't have any more left!
echo.
pause
goto gameplay
:airstrike
cls
if '%airstrike%'=='0' goto noairstrike
echo.
echo %name% has fired an airstrike on the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 300 DEF!
echo.
pause
set /a cpu=%cpu% - 300
set /a airstrike=%airstrike% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noairstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto gameplay
:missiles
cls
if '%missiles%'=='0' goto nomissiles
echo.
echo %name% has fired multiple missiles headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 200 DEF!
echo.
pause
set /a cpu=%cpu% - 200
set /a missiles=%missiles% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nomissiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
pause
:end
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto players
:win
cls
echo.
echo You have won Total War!!!
echo.
pause
:win2
cls
echo.
echo You have won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto players
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire Laser x %cpulaser%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire Laser x %cpulaser%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:-
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire Laser x %cpulaser%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:\
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%6
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='6' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire Laser x %cpulaser%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:%choice%
ping localhost -n 4 >nul
if '%choice%'=='1' goto cpulaser
if '%choice%'=='2' goto cpuairstrike
if '%choice%'=='3' goto cpumissiles
if '%choice%'=='5' goto gameplay
:cpulaser
cls
if '%cpulaser%'=='0' goto nocpulaser
echo.
echo I have fired a Laser headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 400 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 400
set cpulaser=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpulaser
echo.
echo I can't use a laser since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuairstrike
cls
if '%cpuairstrike%'=='0' goto nocpuairstrike
echo.
echo I have fired an airstrike on the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 300 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 300
set /a cpuairstrike=%cpuairstrike% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuairstrike
echo.
echo I can't use an airstrike since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpumissiles
cls
if '%cpumissiles%'=='0' goto nocpumissiles
echo.
echo I have fired multiple missiles headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 200 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 200
set /a cpumissiles=%cpumissiles% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpumissiles
echo.
echo I can't use missiles since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
pause
:cpuwin2
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto players
:p1name
cls
set p1name=
echo.
set /p p1name=Player 1, please type in your name (One word):
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Player 2, please type in your name (One word):
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Easter Egg:
if '%p1name%'=='ishant' goto p1win
if '%p2name%'=='Ishant' goto p2win
:p1country
cls
set p1country=
echo.
echo Welcome %p1name%!
echo.
set /p p1country=Choose your country; USA, India, or China:
if '%p1country%'=='usa' goto p1country1
if '%p1country%'=='USA' goto p1country1
if '%p1country%'=='Usa' goto p1country1
if '%p1country%'=='India' goto p1country2
if '%p1country%'=='india' goto p1country2
if '%p1country%'=='china' goto p1country3
if '%p1country%'=='China' goto p1country3
goto p1country
:p1country1
set p1country=USA
goto p2country
:p1country2
set p1country=India
goto p2country
:p1country3
set p1country=China
:p2country
cls
set p2country=
echo.
echo Welcome %p2name%!
echo.
set /p p2country=Choose your country; USA, India, or China:
if '%p2country%'=='%p1country%' goto na
if '%p2country%'=='usa' goto p2country1
if '%p2country%'=='USA' goto p2country1
if '%p2country%'=='Usa' goto p2country1
if '%p2country%'=='India' goto p2country2
if '%p2country%'=='india' goto p2country2
if '%p2country%'=='china' goto p2country3
if '%p2country%'=='China' goto p2country3
goto p2country
:na
cls
echo.
echo You can't choose %p1country% because %p1name% has already chosen it.
pause >nul
goto p2country
:p2country1
set p2country=USA
goto begin2
:p2country2
set p2country=India
goto begin2
:p2country3
set p2country=China
:begin2
set p1health=1000
set p2health=1000
set p1laser=1
set p1airstrike=2
set p1missiles=3
set p2laser=1
set p2airstrike=2
set p2missiles=3
:p1gameplay
cls
set move=
set choice=
echo.
echo %p1name%, your turn.
echo                                                               %p1country%: %p1health% DEF
echo Options:
echo                                                               %p2country%: %p2health% DEF
echo 1. Fire Laser x %p1laser%
echo.
echo 2. Fire Airstrike x %p1airstrike%
echo.
echo 3. Fire Missiles x %p1missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p1laser
if '%move%'=='2' goto p1airstrike
if '%move%'=='3' goto p1missiles
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
goto p1gameplay
:p1laser
cls
if '%p1laser%'=='0' goto nop1laser
echo.
echo %p1name% has fired a Laser headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 400 DEF!
echo.
pause
set /a p2health=%p2health% - 400
set p1laser=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1laser
echo.
echo You can't use a laser since you don't have any more left!
echo.
pause
goto p1gameplay
:p1airstrike
cls
if '%p1airstrike%'=='0' goto nop1airstrike
echo.
echo %p1name% has fired an airstrike on %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 300 DEF!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1airstrike=%p1airstrike% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p1gameplay
:p1missiles
cls
if '%p1missiles%'=='0' goto nop1missiles
echo.
echo %p1name% has fired multiple missiles headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 200 DEF!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1missiles=%p1missiles% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto players
:p1win
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto players
:p2gameplay
cls
set move=
set choice=
echo.
echo %p2name%, your turn.
echo                                                               %p2country%: %p2health% DEF
echo Options:
echo                                                               %p1country%: %p1health% DEF
echo 1. Fire Laser x %p2laser%
echo.
echo 2. Fire Airstrike x %p2airstrike%
echo.
echo 3. Fire Missiles x %p2missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p2laser
if '%move%'=='2' goto p2airstrike
if '%move%'=='3' goto p2missiles
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
goto p2gameplay
:p2laser
cls
if '%p2laser%'=='0' goto nop2laser
echo.
echo %p2name% has fired a Laser headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 400 DEF!
echo.
pause
set /a p1health=%p1health% - 400
set p2laser=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2laser
echo.
echo You can't use a laser since you don't have any more left!
echo.
pause
goto p2gameplay
:p2airstrike
cls
if '%p2airstrike%'=='0' goto nop2airstrike
echo.
echo %p2name% has fired an airstrike on %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 300 DEF!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2airstrike=%p2airstrike% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p2gameplay
:p2missiles
cls
if '%p2missiles%'=='0' goto nop2missiles
echo.
echo %p2name% has fired multiple missiles headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 200 DEF!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2missiles=%p2missiles% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto players
:p2win
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto players
:suggest
cls
echo.
echo Before you leave, can you suggest a country I can add to the file?
echo.
set /p suggestion=Suggest a country here:
if '%suggestion%'=='' goto suggest
echo %suggestion% >> suggestions.txt