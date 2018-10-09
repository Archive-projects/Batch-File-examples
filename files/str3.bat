rem
rem  The alternative form of string comparison.  In this case,
rem  the dot takes up space on the left side if no parameter
rem  is given.
rem

if .%1==. goto end
echo The first parameter is %1
:end
