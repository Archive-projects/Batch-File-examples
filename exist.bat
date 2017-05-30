@echo off

rem  Check for existence of a file and directory
rem  Note:  this doesn't seem to work on Microsoft Networking network drives
rem  

Create a file and a directory

echo > testfile
md testdir


rem  testfile is a file
rem  testdir is NOT a file

if exist testfile echo testfile is a file
if exist testdir echo testdir is a file

rem  testfile is NOT a directory
rem  testdir is a directory

if exist testfile\nul echo testfile is a directory
if exist testdir\nul echo testdir is a directory

rem  testfile is a file
rem  testdir is NOT a file

if not exist testfile echo testfile is not a file
if not exist testdir echo testdir is not a file

rem  testfile is NOT a directory
rem  testdir is a directory

if not exist testfile\nul echo testfile is not a directory
if not exist testdir\nul echo testdir is not a directory


echo Cleaning up

rem
rem  Now remove both the file and the directory
rem 

del testfile
rd testdir

rem  testfile is no longer a file
rem  testdir was never a file to begin with

if exist testfile echo testfile is a file
if exist testdir echo testdir is a file

rem  testfile was never a directory to begin with
rem  testdir is no longer a directory

if exist testfile\nul echo testfile is a directory
if exist testdir\nul echo testdir is a directory

rem  testfile is no longer a file
rem  testdir was never a file to begin with

if not exist testfile echo testfile is not a file
if not exist testdir echo testdir is not a file

rem  testfile was never a directory to begin with
rem  testdir is no longer a directory

if not exist testfile\nul echo testfile is not a directory
if not exist testdir\nul echo testdir is not a directory




