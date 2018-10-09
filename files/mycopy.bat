@echo off 
rem
rem MYCOPY.BAT copies any number of files 
rem to a directory. 
rem
rem The command uses the following syntax: 
rem mycopy dir file1 file2 ... 
rem

set todir=%1 

:getfile 
shift 

if "%1"=="" goto end 

copy %1 %todir% 

goto getfile 

:end 

set todir= 

echo All done 