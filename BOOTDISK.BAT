@echo off

set DefFloppyDrive1=A:
set DefFloppyDrive1_L=a:
set DefFloppyDrive2=B:
set DefFloppyDrive2_L=b:

set DefFloppyDrive=%1

cls

:CHECK
if not exist EBD\NUL goto NODIR

if "%1"=="/?" GOTO USAGE

if "%1"=="%DefFloppyDrive1%" goto FORMAT

if "%1"=="%DefFloppyDrive1_L%" goto FORMAT

if "%1"=="%DefFloppyDrive2%" goto FORMAT

if "%1"=="%DefFloppyDrive2_L%" goto FORMAT
 
:SET_FLOPPY
echo Please specify the drive letter of your floppy drive.
echo Press 1 for %DefFloppyDrive1%
echo or
echo Press 2 for %DefFloppyDrive2%
echo.
choice /c:12 Choose an option
if errorlevel 2 goto BDRIVE
if errorlevel 1 goto ADRIVE

:ADRIVE
set DefFloppyDrive=%DefFloppyDrive1%
goto FORMAT

:BDRIVE
set DefFloppyDrive=%DefFloppyDrive2%
goto FORMAT


:FORMAT
echo.
echo To make a Startup Disk
echo Label a disk "Windows 98 Startup Disk" and insert it into drive %DefFloppyDrive%
echo Caution: Setup will delete any existing files on this floppy disk.
echo.
pause
format %DefFloppyDrive% /u /v:EBD /autotest
if not errorlevel 0 goto FORMAT_ERROR

:COPY
echo.
echo Copying files to %DefFloppyDrive% ...
copy .\EBD\*.* %DefFloppyDrive% > NUL
echo.
echo Transfering system files...
sys %DefFloppyDrive% > NUL
echo.
echo Startup disk is ready.
echo.
goto END

:FORMAT_ERROR
echo.
echo There was a error formatting the specified drive.
echo Press Y to retry or N to cancel
choice /c:yn
if errorlevel 2 goto FORMAT_CANCEL
if errorlevel 1 goto FORMAT
:FORMAT_CANCEL
echo .
echo Exiting
goto END

:USAGE
echo.
echo Usage: bootdisk  [drive letter:]
echo        e.g: bootdisk
echo                or
echo             bootdisk %DefFloppyDrive1%
echo.
echo This command should be run from the WINDOWS\COMMAND directory.
echo.
goto END

:NODIR
echo.
echo The EBD directory does not exist.
echo Change to the WINDOWS\COMMAND directory and try again.
echo.
goto END

:END
set DefFloppyDrive=
set DefFloppyDrive1=
set DefFloppyDrive1_L=
set DefFloppyDrive2=
set DefFloppyDrive2_L=
