rem
rem  Partial solution to Lab #2
rem

rem
rem We can comment out the first "if" because if %2 is set, then
rem %1 *must* be set
rem

rem if .%1 == . goto missing

rem
rem  If the "if" condition evaluates to true, then the "goto missing"
rem  command is executed.  The dots are used to prevent an error
rem  message in case the user doesn't provide at least two 
rem  command-line arguments.  The false case begins on the next 
rem  line.
rem

if .%2 == . goto missing
goto start

:missing
echo usage: %0 dir file
goto end

:start
if not exist %1 goto checkdir
echo %1 is a file, not a directory
goto end

:checkdir

rem
rem  This "if" is used to check for the existence of a directory.
rem  The \nul must be used, because you can only check for the
rem  existence of files.  "nul" is a special file that exists
rem  in every directory.
rem

if exist %1\nul goto docopy
md %1 > nul
if errorlevel 0 goto docopy
echo Cannot create directory %1
goto end

:docopy
copy %2 %1 > nul
if errorlevel 0 goto end
echo Cannot copy file %1 to directory %2

:end
