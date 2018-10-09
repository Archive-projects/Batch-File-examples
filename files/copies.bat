rem @echo off

rem  Check various error levels by running copy commands

rem  This should always work

copy c:\autoexec.bat .
if not errorlevel 0 echo error %errorlevel%
pause


rem  Attempt to copy a non-existent file
rem   to an existing directory

copy c:\xxxxxxxx.yyy .
if not errorlevel 0 echo error %errorlevel%
pause


rem  Attempt to copy an existing file to a
rem   non-existent directory

copy c:\autoexec.bat q:\xyxyx\xyxyxy
if not errorlevel 0 echo error %errorlevel%
pause


rem  Attempt to copy over a read-only file

attrib +r autoexec.bat 

copy c:\autoexec.bat .
if not errorlevel 0 echo error %errorlevel%
pause

