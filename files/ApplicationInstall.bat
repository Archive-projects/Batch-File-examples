@ECHO OFF

REM
REM	|--------------------------------------------------------------------------------------------------------------------
REM	| Purpose:			Install for application
REM	|
REM	| Ver.	Date			Author			Details
REM	| 1.00	22 MAY 2008		Anthony Duguid		Initial version.
REM	|--------------------------------------------------------------------------------------------------------------------*/


REM
REM 	/E 	 = Copies directories and subdirectories, including empty ones. Same as /S /E. May be used to modify /T. 
REM	/D:m-d-y = Copies files changed on or after the specified date. 
REM		   If no date is given, copies only those files whose source time is newer than the destination time. 
REM	/K 	 = Copies attributes. Normal Xcopy will reset read-only attributes. 
REM 	/Q 	 = Does not display file names while copying. 
REM 	/R 	 = Overwrites read-only files. 
REM 	/Y 	 = Suppresses prompting to confirm you want to overwrite an existing destination file. 
REM
	NET USE s: \\servername\sharedfolder$
REM	Copy the install directory and sub-directories
	XCOPY "S:\App\*.*" "C:\Local\App\*.*" /E /K /Q /R /Y /D


REM	create the shortcuts
	COPY "s:\App\ShortcutLink.lnk" "%ALLUSERSPROFILE%\Desktop"


REM	Register the direct link libraries
	REGSVR32 /s "C:\Local\App\Library1.dll"
	REGSVR32 /s "C:\Local\App\Library2.dll"
	REGSVR32 /s "C:\Local\App\Library3.dll"
	REGSVR32 /s "C:\Local\App\Library4.dll"


REM	start application
	start "" "C:\Local\App\App.exe" "Application Name Here"
