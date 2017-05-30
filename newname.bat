@echo off
goto first
:loop
echo The Computer number is invalid....Try again
:First
Choice Enter Row letter A,B,C,D or E /c:ABCDE
if errorlevel 1 set row=A
if errorlevel 2 set row=B
if errorlevel 3 set row=C
if errorlevel 4 set row=D
if errorlevel 5 set row=E
Choice Enter Computer Number 1,2,3,4 or 5 /c:12345
if errorlevel 1 set comp=1
if errorlevel 2 set comp=2
if errorlevel 3 set comp=3
if errorlevel 4 set comp=4
if errorlevel 5 set comp=5
if %row%==A if %comp%==2 goto loop
if %row%==A if %comp%==5 goto loop
if %row%==B if %comp%==5 goto loop
if %row%==E if %comp%==4 goto loop
if %row%==E if %comp%==5 goto loop
echo the computer selected is %row%%comp% 
choice is this correct /c:YN
if errorlevel 2 goto First

rem Here to create a regestry file
echo REGEDIT4>\newname.reg
echo "">>\newname.reg
echo [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName]>>\newname.reg
echo "ComputerName"="%row%%comp%L17">>\newname.reg
echo "">>\newname.reg
echo [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\VxD\VNETSUP]>>\newname.reg
echo "ComputerName"="%row%%comp%L17">>\newname.reg
echo "Workgroup"="CIT_L17">>\newname.reg
echo "Comment"="L17 System Unit %row%%comp%">>\newname.reg

regedit \newname.reg