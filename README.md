# BatchFiles
Various batch files

args.bat	Display the use of spaces with echo.
autoexec.bat	AUTOEXEC.BAT file from PC in L-1. Mostly set commands. PATH is a special command which sets the PATH variable. Notice how the "Pervasive.SQL 2000" install has messed up the batch file by putting commands before the "@Echo off" line.
backbat2.bat	Backup batch files (Windows 95/98/ME version)
	      usage:  backbat backupdir
	      where:  backupdir  is the directory to copy batch files
	                         all batch files in the current directory will
	                         be backed up
	Make sure that there is at least one argument.
	Save the backup directory.
	Check to make sure that the backupdir exists and isn't a file
	If the directory does not exist, create it. Because we can't reliably check the errorlevel in Windows 95/98/ME, check if the directory exists after we do the make directory command.
	Copy each batch file one at a time. Note: the for loop variable (%%b) must be contain only one letter.
	Use the for loop again to check if each file was copied (since it is difficult to run multiple commands in a for loop).
	Clean up: unset our variable.
badpath.bat	This batch file will mess up your command prompt's PATH setting. Without setlocal and endlocal, set-ting variables changes the DOS environment.
copies.bat	Check various error levels by running copy commands.
cp.bat	Copy a file to a new directory, then make it read-only, then try the copy again. The second copy should fail and errorlevel will be set to a non-zero value.
cp2.bat	Partial solution to Lab #2.
endless.bat	Endless loop -- use Ctrl+Break or Ctrl+C to stop it.
exist.bat	Check for existence of a file (testfile) and directory (testdir).
	Note: this doesn't seem to work on Microsoft Networking network drives (such as W: in L-17).
	testfile is a file
	testdir is NOT a file
	testfile is NOT a directory
	testdir is a directory
go.bat	An infinite loop -- use Ctrl+Break or Ctrl+C to stop it.
go2.bat	A conditional loop -- continues until no more arguments are left on the command line.
hello.bat	Hello world program.
keep.bat	Save the first parameter in the saved variable.
	The shift command moves the %1 to %0 and %2 to %1, so that the previous value is replaced.
	If we do another shift, the original %1 (now %0) gets lost.
	Since we stored in the saved variable, we can recover the value. With named (as opposed to numbered) variables, you have to use a percent sign before and after the variable name to get the value.
main1.bat	
Demonstrate call command to execute another batch file (sub).	
main2.bat	Demonstrate call with setting variables and passing parameters.
mbcopy.bat	One possible solution to Lab #2, Part B.
	MBCOPY.BAT copies any number of files or directories to to a directory. The command uses the following syntax:
	      mbcopy dest src1 src2 ... 
	If the destination directory does not exist, create it
	If the source file is a directory, it gets copied differently from an ordinary file.
	If the source directory does not already exist in the destination directory, create it so that XCOPY does not prompt the user.
mycopy.bat	MYCOPY.BAT copies any number of files to a directory. The command uses the following syntax:
	      mycopy dir file1 file2 ... 
myvar.bat	Set a variable which will remain in the DOS environment after the batch file is completed. To verify this, enter "set" at the DOS prompt after you run this batch file.
myvar2.bat	
	
Set a variable which will not affect the DOS environment after the batch file is completed. To verify this, enter "set" at the DOS prompt after you run this batch file. Combine this and myvar.bat to see what happens. Note: Windows NT or 2000 only.	
	
p.bat	Set the PATH on the network in L-17.
param.bat	You can access up to nine command-line parameters at any given time.
param2.bat	You can access up to nine command-line parameters at any given time, but you can choose to access only selected parameters, and ignore the rest.
param3.bat	The shift command can be used to process each command-line parameter, one at a time, using the %1 variable.
param4.bat	shift can be used when you need to process more than nine parameters.
param5.bat	shift can be used when you need to process more than nine parameters; you can still access only nine at a time.
rems.bat	This is a comment.
	
	
	
rems2.bat	More comments.
safepath.bat	This batch file will not affect the DOS PATH. Note: Windows NT or 2000 only.
safepath9x.bat	This batch file will not affect the DOS PATH, by making a copy of the PATH variable beforehand, and restoring it at the end of the batch file.
shift.bat	Demonstrate shift command.
shifter.bat	Demonstrate shift command (no echo).
str1.bat	This demonstrates the form of the if command comparing strings. If you run this batch file without any parameters, you will get an error message.
str2.bat	
	
This demonstrates the correct form of the if command for comparing strings. If you run this batch file without any parameters, you will not get an error message, because the empty quotes will be on both the left side and on the right side. In the previous batch file (str1.bat) the left side would be blank, causing an error.	
	
str3.bat	The alternative form of string comparison. In this case, the dot takes up space on the left side if no parameter is given.
sub.bat	This is the batch file "called" by both main1.bat and main2.bat. It demonstrates the use of shared variables and parameters passed by the call command.
tf1.bat	Demonstrates incorrect if command. If true, goto end. Otherwise, both echo statements are executed.
tf2.bat	Demonstrates correct if command. If true, only one echo statement is shown. If false, only one echo statement is is also shown, because the following goto skips over the second (true case) echo command.
tf3.bat	Negative form of if command. Here, the not keyword is used to goto the false case; otherwise, the true case is executed immediately following the if. Then we skip over the false case with a second goto.
tf4.bat	Demonstates a if-else condition. If the first if is true, then we go to the first case. If the first if is false, then we check the second if. If that if is true, then we go to the second case. If both ifs are false, the "else" case is executed.
tf5.bat	Alternate form of if-elseif-else structure with goto for else case. That way, you can group code together in a "more logical" or "more natural" manner.
tf6.bat	Demonstrates a logical OR condition. Both if commands goto the same label if true. Otherwise, both are false.
zero.bat	Batch file command line is copied to %0.
	
