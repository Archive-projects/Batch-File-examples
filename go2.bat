@echo off

rem  A conditional loop -- continues until no more arguments are left
rem  on the command line

:start
if "%1" == "" goto stop
echo %1 %2 %3 %4 %5 %6 %7 %8 %9
shift
goto start
:stop
echo Done.
