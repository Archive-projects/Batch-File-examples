@ECHO OFF

REM
REM    |--------------------------------------------------------------------------------------------------------------------
REM    | Purpose:    This is caused by Windows Resource Protection (WRP), which stops programs overwriting essential system files. 
REM    |             It keeps its log files in C:\Windows\Logs\CBS. The SFC.exe program writes the details of each verification operation 
REM    |             and of each repair operation to the CBS.log file. The CBS.persist.log is generated when the CBS gets to be around 50Mb in size. 
REM    |             CBS.log is copied to cbs.persist.log and a new cbs.log file is started. The cbs logs would only be useful for serious troubleshooting issues. 
REM    |             If the system is running fine, we can delete this file and SFC.exe will create a new one the next time it is run. 
REM    | 
REM    |             So why do we have this mysterious process writing a files in the temp folder?? It appears that on a number of servers 
REM    |             we can see the SFC archive process has failed to recycle properly and as a result had been running for a long time. 
REM    |
REM    | Ver. Date                 Author               Details
REM    | 1.00 13-DEC-2016          Anthony Duguid       Initial version.
REM    |--------------------------------------------------------------------------------------------------------------------*/


SETLOCAL
set CBS_LOG_FILES=%windir%\Logs\CBS\CbsPersist_*.log
set CBS_CAB_FILES=%windir%\temp\cab_*
set LOGFILE=C:\temp\delete_cbspersist_%USERNAME%_%date:~10,4%%date:~7,2%%date:~4,2%_%time:~0,2%%time:~3,2%_%time:~6,5%

REM    Removes the oversize CBS persist logs
"cmd /c del /q %CBS_LOG_FILES% && echo %CBS_LOG_FILES%>>%LOGFILE%.log || echo %CBS_LOG_FILES%>>%LOGFILE%.err"

REM    Removes the duplicate failed cab_ files from Windows\temp.
"cmd /c del /q %CBS_CAB_FILES% && echo %CBS_CAB_FILES%>>%LOGFILE%.log || echo %CBS_CAB_FILES%>>%LOGFILE%.err"
