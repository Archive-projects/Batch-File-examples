rem
rem  This demonstrates the form of the if command comparing strings
rem  If you run this batch file without any parameters, you will
rem  get an error message.
rem

if %1=="" goto end
echo The first parameter is %1
:end
