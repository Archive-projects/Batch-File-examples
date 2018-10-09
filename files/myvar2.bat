@echo off

rem  Set a variable which will not affect the DOS environment after the batch
rem  file is completed.  To verify this, enter "set" at the DOS prompt after
rem  you run this batch file.  Combine this and myvar.bat to see what happens.
rem
rem  Note:  Windows NT or 2000 only

echo Before setlocal, myvar is %myvar%

setlocal

set myvar=def

echo After set, myvar is %myvar%

endlocal

echo After endlocal, myvar is %myvar%
