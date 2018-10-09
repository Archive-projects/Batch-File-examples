rem
rem  Demonstrates correct "if" command.  If true, only one echo
rem  statement is shown.  If false, only one echo statement is
rem  is also shown, because the following goto skips over the
rem  second (true case) echo command.
rem

if .%1==. goto iftrue
echo If is false
goto iffalse
:iftrue
echo If is true
:iffalse

