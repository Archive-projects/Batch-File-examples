rem
rem  Copy a file to a new directory, then make it read-only,
rem  then try the copy again.  The second copy should fail
rem  and errorlevel will be set to a non-zero value.
rem

md %1
echo %errorlevel%
copy %2 %1
echo %errorlevel%
cd %1
attrib +r %2
echo %errorlevel%
cd ..
copy %2 %1
echo %errorlevel%

