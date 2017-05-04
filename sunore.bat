@ECHO OFF
TITLE SUnORE
:MENU
CLS
TYPE art.txt
ECHO.
ECHO ============================================================
ECHO PRESS 1, 2, 3, 4, 5 OR 6 to select your task      7 to EXIT.
ECHO ============================================================
ECHO.
ECHO 1 - Clean
ECHO 2 - DocCheck
ECHO 3 - Compile R Code
ECHO 4 - Compile PDF
ECHO 5 - View PDF
ECHO 6 - All of the above
ECHO 7 - EXIT
ECHO.

SET /P M=Type 1, 2, 3, 4, 5, 6 OR 7 then press ENTER:
IF %M%==1 GOTO CLN
IF %M%==2 GOTO CHECK
IF %M%==3 GOTO CODE
IF %M%==4 GOTO PDF
IF %M%==5 GOTO VIEW
IF %M%==6 GOTO ALL
IF %M%==7 GOTO EOF

:GIT
ECHO -----------------------
ECHO -      GIT UPDATE     -
ECHO -----------------------
git pull http://github.com/johanjvrens/Schools-Dissipline-program.git
PAUSE
GOTO MENU
:ALL
make
GOTO MENU
:CLN
make clean
GOTO MENU
:CHECK
make check
GOTO MENU
:CODE
make code
GOTO MENU
:PDF
make pdf
GOTO MENU
:VIEW
make view
GOTO MENU
EXIT