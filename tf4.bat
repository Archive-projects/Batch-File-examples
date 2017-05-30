rem
rem  Demonstates a if-else if-else condition.  If the first "if" is 
rem  true, then we go to the first case (1).  If the first "if" is
rem  false, then we check the second "if".  If that "if" is true,
rem  then we go to the second case (2).  If both "ifs" are false,
rem  the "else" case is executed.
rem

if .%1 == .1 goto 1
if .%1 == .2 goto 2
echo else (neither 1 nor 2)
goto endif
:1
echo You selected 1
goto endif
:2
echo You selected 2
goto endif
:endif
