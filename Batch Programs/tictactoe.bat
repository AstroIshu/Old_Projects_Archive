@ECHO OFF

:BEGIN  

  REM Skill level

  set sl=

  cls

  echo                       Tic Tac Toe by Ishant                          (Q to quit)

  echo.

  echo.

  echo        Pick your skill level (press a number)

  echo.

  echo               (3-1) Easy 

  echo               (3-2) Medium

  echo               (3-3) Hard

  echo               (3-4) Expert 




  echo               (4-1) Easy 

  echo               (4-2) Medium

  CHOICE /c:123q /n > nul

  if errorlevel 4 goto end

  if errorlevel 3 set sl=3

  if errorlevel 3 goto layout

  if errorlevel 2 set sl=2

  if errorlevel 2 goto layout

  set sl=1




:LAYOUT

  REM Player turn ("y" or "o")

  set pt=

  REM Game winner ("y" or "o")

  set gw=

  REM No moves

  set nm=

  REM Set to one blank space after equal sign (check with cursor end)

  set t1= 

  set t2= 

  set t3= 

  set t4= 

  set t5= 

  set t6= 

  set t7= 

  set t8= 

  set t9= 




:UPDATE

  cls

  echo   (S to set skill level)       Tic Tac Toe by Ishant             (Q to quit)

  echo.

  echo                               You are the Y player. 

  echo                    Press the number where you want to put an Y.     

  echo.

  echo   Skill level %sl%                       7 8 9 

  echo                                       4 5 6

  echo                                       1 2 3

  echo.

  echo                                       :   :

  echo                                     %t1% : %t2% : %t3%

  echo                                   ....:...:....

  echo                                     %t4% : %t5% : %t6%

  echo                                   ....:...:....

  echo                                     %t7% : %t8% : %t9%

  echo                                       :   :

  if "%gw%"=="y" goto winy2

  if "%gw%"=="o" goto wino2

  if "%nm%"=="0" goto nomoves




:PLAYER

  set pt=y

  REM Layout is for keypad. Change CHOICE to "/c:123456789sq  /n > nul"

  REM for numbers to start at top left (also change user layout above).

  CHOICE /c:789456123sq /n > nul

  if errorlevel 11 goto end

  if errorlevel 10 goto begin

  if errorlevel 9 goto 9

  if errorlevel 8 goto 8

  if errorlevel 7 goto 7

  if errorlevel 6 goto 6

  if errorlevel 5 goto 5

  if errorlevel 4 goto 4

  if errorlevel 3 goto 3

  if errorlevel 2 goto 2

  goto 1




:1  

  REM Check if "y" or "o" already in square.

  if "%t1%"=="y" goto player

  if "%t1%"=="o" goto player

  set t1=y

  goto check

:2  

  if "%t2%"=="y" goto player

  if "%t2%"=="o" goto player

  set t2=y

  goto check

:3  

  if "%t3%"=="y" goto player

  if "%t3%"=="o" goto player

  set t3=y

  goto check

:4  

  if "%t4%"=="y" goto player

  if "%t4%"=="o" goto player

  set t4=y

  goto check

:5  

  if "%t5%"=="y" goto player

  if "%t5%"=="o" goto player

  set t5=y

  goto check

:6  

  if "%t6%"=="y" goto player

  if "%t6%"=="o" goto player

  set t6=y

  goto check

:7  

  if "%t7%"=="y" goto player

  if "%t7%"=="o" goto player

  set t7=y

  goto check

:8  

  if "%t8%"=="y" goto player

  if "%t8%"=="o" goto player

  set t8=y

  goto check

:9  

  if "%t9%"=="y" goto player

  if "%t9%"=="o" goto player

  set t9=y

  goto check




:COMPUTER

  set pt=o

  if "%sl%"=="1" goto skill1  

 REM (win corner to corner)

  if "%t1%"=="o" if "%t3%"=="o" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t1%"=="o" if "%t9%"=="o" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t1%"=="o" if "%t7%"=="o" if not "%t4%"=="y" if not "%t4%"=="o" goto c4  

  if "%t3%"=="o" if "%t7%"=="o" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t3%"=="o" if "%t9%"=="o" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t9%"=="o" if "%t7%"=="o" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

 REM (win outside middle to outside middle)

  if "%t2%"=="o" if "%t8%"=="o" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t4%"=="o" if "%t6%"=="o" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

 REM (win all others)

  if "%t1%"=="o" if "%t2%"=="o" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if "%t1%"=="o" if "%t5%"=="o" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t1%"=="o" if "%t4%"=="o" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t2%"=="o" if "%t5%"=="o" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%t3%"=="o" if "%t2%"=="o" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t3%"=="o" if "%t5%"=="o" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t3%"=="o" if "%t6%"=="o" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t4%"=="o" if "%t5%"=="o" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t6%"=="o" if "%t5%"=="o" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t7%"=="o" if "%t4%"=="o" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t7%"=="o" if "%t5%"=="o" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if "%t7%"=="o" if "%t8%"=="o" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t8%"=="o" if "%t5%"=="o" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t9%"=="o" if "%t8%"=="o" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t9%"=="o" if "%t5%"=="o" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t9%"=="o" if "%t6%"=="o" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

 REM (block general attempts) -----------------------------------------------

  if "%t1%"=="y" if "%t2%"=="y" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if "%t1%"=="y" if "%t5%"=="y" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t1%"=="y" if "%t4%"=="y" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t2%"=="y" if "%t5%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%t3%"=="y" if "%t2%"=="y" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t3%"=="y" if "%t5%"=="y" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t3%"=="y" if "%t6%"=="y" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t4%"=="y" if "%t5%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t6%"=="y" if "%t5%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t7%"=="y" if "%t4%"=="y" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t7%"=="y" if "%t5%"=="y" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if "%t7%"=="y" if "%t8%"=="y" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if "%t8%"=="y" if "%t5%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t9%"=="y" if "%t8%"=="y" if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if "%t9%"=="y" if "%t5%"=="y" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t9%"=="y" if "%t6%"=="y" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

 REM (block obvious corner to corner) 

  if "%t1%"=="y" if "%t3%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t1%"=="y" if "%t9%"=="y" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t1%"=="y" if "%t7%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4  

  if "%t3%"=="y" if "%t7%"=="y" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t3%"=="y" if "%t9%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t9%"=="y" if "%t7%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%sl%"=="2" goto skill2

 REM (block sneaky corner to corner 2-4, 2-6, etc.) 

  if "%t2%"=="y" if "%t4%"=="y" if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if "%t2%"=="y" if "%t6%"=="y" if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if "%t8%"=="y" if "%t4%"=="y" if not "%t7%"=="y" if not "%t7%"=="o" goto c7  

  if "%t8%"=="y" if "%t6%"=="y" if not "%t9%"=="y" if not "%t9%"=="o" goto c9

 REM (block offset corner trap 1-8, 1-6, etc.)

  if "%t1%"=="y" if "%t6%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%t1%"=="y" if "%t8%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t3%"=="y" if "%t8%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t3%"=="y" if "%t4%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%t9%"=="y" if "%t4%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t9%"=="y" if "%t2%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t7%"=="y" if "%t2%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t7%"=="y" if "%t6%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2




:SKILL2

 REM (block outside middle to outside middle)

  if "%t2%"=="y" if "%t8%"=="y" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if "%t4%"=="y" if "%t6%"=="y" if not "%t5%"=="y" if not "%t5%"=="o" goto c5

 REM (block 3 corner trap)

  if "%t1%"=="y" if "%t9%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t3%"=="y" if "%t7%"=="y" if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if "%t1%"=="y" if "%t9%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t3%"=="y" if "%t7%"=="y" if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if "%t1%"=="y" if "%t9%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t3%"=="y" if "%t7%"=="y" if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if "%t1%"=="y" if "%t9%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  if "%t3%"=="y" if "%t7%"=="y" if not "%t8%"=="y" if not "%t8%"=="o" goto c8

:SKILL1 

 REM (just take a turn) 

  if not "%t5%"=="y" if not "%t5%"=="o" goto c5

  if not "%t1%"=="y" if not "%t1%"=="o" goto c1

  if not "%t3%"=="y" if not "%t3%"=="o" goto c3

  if not "%t7%"=="y" if not "%t7%"=="o" goto c7

  if not "%t9%"=="y" if not "%t9%"=="o" goto c9

  if not "%t2%"=="y" if not "%t2%"=="o" goto c2

  if not "%t4%"=="y" if not "%t4%"=="o" goto c4

  if not "%t6%"=="y" if not "%t6%"=="o" goto c6

  if not "%t8%"=="y" if not "%t8%"=="o" goto c8

  set nm=0

  goto update




:C1  

  set t1=o

  goto check

:C2  

  set t2=o

  goto check

:C3  

  set t3=o

  goto check

:C4  

  set t4=o

  goto check

:C5  

  set t5=o

  goto check

:C6  

  set t6=o

  goto check

:C7  

  set t7=o

  goto check

:C8  

  set t8=o

  goto check

:C9  

  set t9=o

  goto check




:CHECK

  if "%t1%"=="y" if "%t2%"=="y" if "%t3%"=="y" goto winy

  if "%t4%"=="y" if "%t5%"=="y" if "%t6%"=="y" goto winy

  if "%t7%"=="y" if "%t8%"=="y" if "%t9%"=="y" goto winy

  if "%t1%"=="y" if "%t4%"=="y" if "%t7%"=="y" goto winy

  if "%t2%"=="y" if "%t5%"=="y" if "%t8%"=="y" goto winy

  if "%t3%"=="y" if "%t6%"=="y" if "%t9%"=="y" goto winy

  if "%t1%"=="y" if "%t5%"=="y" if "%t9%"=="y" goto winy

  if "%t3%"=="y" if "%t5%"=="y" if "%t7%"=="y" goto winy

  if "%t1%"=="o" if "%t2%"=="o" if "%t3%"=="o" goto wino

  if "%t4%"=="o" if "%t5%"=="o" if "%t6%"=="o" goto wino

  if "%t7%"=="o" if "%t8%"=="o" if "%t9%"=="o" goto wino

  if "%t1%"=="o" if "%t4%"=="o" if "%t7%"=="o" goto wino

  if "%t2%"=="o" if "%t5%"=="o" if "%t8%"=="o" goto wino

  if "%t3%"=="o" if "%t6%"=="o" if "%t9%"=="o" goto wino

  if "%t1%"=="o" if "%t5%"=="o" if "%t9%"=="o" goto wino

  if "%t3%"=="o" if "%t5%"=="o" if "%t7%"=="o" goto wino

  if "%pt%"=="y" goto computer

  if "%pt%"=="o" goto update




:WINy

  set gw=y

  goto update

:WINy2

  echo   You win!

  echo   Play again (Y,N)?

  CHOICE /c:ynsq /n > nul

  if errorlevel 4 goto end

  if errorlevel 3 goto begin

  if errorlevel 2 goto end

  goto layout




:WINO

  set gw=o

  goto update

:WINO2

  echo  You lose. Try again?

  echo   Play again (Y,N)?

  CHOICE /c:ynsq /n > nul

  if errorlevel 4 goto end

  if errorlevel 3 goto begin

  if errorlevel 2 goto end

  goto layout




:NOMOVES

  echo   There are no more moves left!

  echo   Play again (Y,N)?

  CHOICE /c:ynsq /n > nul

  if errorlevel 4 goto end

  if errorlevel 3 goto begin

  if errorlevel 2 goto end

  goto layout




:END

  cls

  echo Tic Tac Toe by JZ

  echo.

  REM Clear all variables (no spaces after equal sign).

  set gw=

  set nm=

  set sl=

  set pt=

  set t1=

  set t2=

  set t3=

  set t4=

  set t5=

  set t6=

  set t7=

  set t8=

  set t9=