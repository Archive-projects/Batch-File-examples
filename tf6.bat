rem
rem  Demonstrates a logical OR condition.  Both "if" commands goto
rem  the same label if true.  Otherwise, both are false.
rem

if .%1 == .1 goto valid
if .%1 == .2 goto valid
echo You selection is invalid
goto end
:valid
echo You selected 1 or 2
:end

