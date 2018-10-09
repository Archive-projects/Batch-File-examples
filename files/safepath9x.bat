rem @echo off

rem  This batch file will not affect the DOS PATH, by making a copy of the PATH
rem  variable beforehand, and restoring it at the end of the batch file.

echo Initially, PATH is %path%

set oldpath=%path%

set path=abc

echo Now, PATH is %path%

echo Old PATH is %oldpath%

set path=%oldpath%

echo Finally, PATH is %path%






