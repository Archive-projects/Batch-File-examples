@echo off

rem
rem  Save the first parameter in the saved variable
rem

set saved=%1

echo parameter zero (batch file commandc) is %0
echo first parameter is %1

rem
rem  The shift command moves the %1 to %0 and %2 to %1, so that the
rem  previous value is replaced

shift
echo new first parameter is %1
echo old first parameter is %0

rem 
rem  If we do another shift, the original %1 (now %0) gets lost.
rem  Since we stored in the saved variable, we can recover the
rem  value.  With named (as opposed to numbered) variables, you
rem  have to use a percent sign before and after the variable
rem  name to get the value.
rem

shift
echo new first parameter is %1
echo original first parameter is %saved%
echo now parameter zero is %0
