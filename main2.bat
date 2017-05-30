rem
rem  Demonstrate "call" with setting variables and passing parameters.
rem

echo Starting %0
echo Calling sub
set oldmydir=%mydir%
set mydir=c:\comp863
call sub %1 %2 %3 %4 %5 
echo sub returned, mylocal=%mydir%
set mydir=%oldmydir%
set oldmydir=
echo Leaving %0
