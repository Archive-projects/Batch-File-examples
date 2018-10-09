@echo off
rem
rem  backbat.bat  -- Backup batch files (Windows 95/98/ME version)
rem 
rem  usage:  backbat backupdir
rem  where:  backupdir  is the directory to copy batch files
rem                     all batch files in the current directory will
rem                     be backed up
rem

rem  Make sure that there is at least one argument

if not "%1"=="" goto argsok

echo usage:  %0 backupdir
echo where:  backupdir  is the directory to copy batch files
echo                    all batch files in the current directory will
echo                    be backed up

goto end


:argsok

rem  Save the backup directory

set backupdir=%1


rem  Check to make sure that the backupdir exists and isn't a file

if not exist %backupdir% goto notfile

echo %backupdir% is a file
goto end


:notfile

rem  If the directory does not exist, create it.  Because we can't reliably
rem  check the errorlevel in Windows 95/98/ME, check if the directory exists
rem  after we do the make directory command.

if exist %backupdir%\nul goto skipdir

md %backupdir%

if exist %backupdir%\nul goto skipdir

echo Error creating backup directory
goto end


:skipdir

rem  Copy each batch file one at a time by calling our subroutine.
rem  Note:  the for loop variable (%%b) must be contain only one letter.

for %%b in ( *.bat ) do copy %%b %backupdir% > nul

:end

rem  Clean up:  unset our variable

set backupdir=

