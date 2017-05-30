@echo off 
rem
rem	MBCOPY.BAT
rem	Author:  Mike Boldin, Niagara College
rem
rem	Description:
rem
rem	MBCOPY.BAT copies any number of files or directories to
rem 	to a directory. 
rem
rem 	The command uses the following syntax: 
rem 	mbcopy dest src1 src2 ... 
rem
rem	Modification History:
rem	2000.09.15  Modified original MYCOPY.BAT for Lab #2
rem
rem

if "%1"=="" goto usage
if "%2"=="" goto usage
if not "%1"=="/?" goto start

:usage

rem
rem 	Show usage
rem

echo usage:  %0 dest-dir src [...]
echo where:  dest-dir  is the destination directory
echo         src       is a file or directory to copy (multiple src 
echo                    files or directories may be specified)
goto end

:start

setlocal
set todir=%1

rem
rem	If the destination directory does not exist, create it
rem

if exist %todir%\nul goto getfile

echo Creating directory %todir%
md %todir%

if not errorlevel 1 goto getfile

echo Error creating directory %todir%
goto end

:getfile 

shift 

if "%1"=="" goto endok

rem
rem	If the source file is a directory, it gets copied differently
rem	from an ordinary file
rem

if exist %1\nul goto copydir1

copy %1 %todir% > nul

goto check

:copydir1

rem
rem	If the source directory does not already exist in the
rem	destination directory, create it so that XCOPY does not
rem	prompt the user
rem

if exist %todir%\%1 goto copydir2

md %todir%\%1

if not errorlevel 1 goto copydir2

echo Error creating directory %todir%\%1
goto end

:copydir2

xcopy %1 %todir%\%1 /s /e > nul

:check

if not errorlevel 1 goto getfile

echo Error copying %1 
goto end

goto getfile 

:endok

echo All done 

:end

endlocal
