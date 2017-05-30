rem
rem  This demonstrates the correct form of the if command for
rem  comparing strings.  If you run this batch file without any 
rem  parameters, you will not get an error message, because
rem  the empty quotes will be on both the left side and
rem  on the right side.  In the previous batch file (str1.bat)
rem  the left side would be blank, causing an error.
rem

if "%1"=="" goto end
echo The first parameter is %1
:end