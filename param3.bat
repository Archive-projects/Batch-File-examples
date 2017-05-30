@echo off

rem
rem  The shift command can be used to process each command-line
rem  parameter, one at a time, using the %1 variable.
rem

echo %1
shift
echo %1
shift
echo %1
shift

