rem
rem  Demonstrates incorrect "if" command.  If true, goto end.  
rem  Otherwise, rem  both echo statements are executed.
rem

if .%1==. goto end
echo If is false
:end
echo If is true
