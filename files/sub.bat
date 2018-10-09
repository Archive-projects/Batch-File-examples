rem
rem  This is the batch file "called" by both main1.bat and main2.bat.
rem  It demonstrates the use of shared variables and parameters
rem  passed by the "call" command.
rem

echo Entering batch file %0
echo Before setlocal, mydir=%mydir%
set submydir=%mydir%
set mydir=c:\
echo Now, mydir=%mydir%
echo Got args %1 %2 %3 %4 %5 %6 %7 %8 %9
dir /a:d
set mydir=%submydir%
set submydir=
echo After endlocal, mydir=%mydir%
echo Leaving batch file %0
