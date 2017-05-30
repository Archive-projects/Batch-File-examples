rem
rem  Negative form of "if" command.  Here, the "not" keyword is
rem  used to goto the false case; otherwise, the true case is
rem  executed immediately following the "if".  Then we skip
rem  over the false case with a second goto.
rem

if not .%1 == . goto iffalse
echo If is true
goto iftrue
:iffalse
echo If is false
:iftrue


