@echo off

REM Notes:
REM DOSSTART.BAT is run whenenver you choose "Restart the computer 
REM in MS-DOS mode" from the Shutdown menu in Windows.  It allows 
REM you to load programs that you might not want loaded in Windows, 
REM (because they have functional equivalents) but that you do 
REM want loaded under MS-DOS.  The two primary candidates for 
REM this are MSCDEX and a real mode driver for the mouse you ship
REM with your system. Commands that you want present in both Windows
REM and MS-DOS should be placed in the Autoexec.bat in the 
REM \Image directory of your reference server.  Please note that for
REM MSCDEX you will need to load the corresponding real-mode CD 
REM driver in Config.sys.  This driver won't be used by Windows 98
REM but will be available prior to and after Windows 98 exits.
REM
REM This file is also helpful if you want to F8 boot into MS-DOS 7.0
REM before Windows loads and access the CD-ROM.  All you have to do
REM is press F8 and then run DOSSTART to load MSCDEX and your real
REM mode mouse driver (no need to remember the command line parameters
REM for these two files.
REM
REM - You MUST explicitly specify the CD ROM Drive Letter for MSCDEX.
REM - The string following the /D: statement must explicitly match 
REM   the string in CONFIG.SYS following your CD-ROM device driver.

REM MSCDEX.EXE  /D:OEMCD001 /l:d
REM MOUSE.EXE

