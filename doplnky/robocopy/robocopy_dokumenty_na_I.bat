@echo off
title robocopy_adresar_dokumenty_na_I.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "I:\RoboCopy\Documents" *.* /MIR
date /t > I:\RoboCopy\last_sync_time-date_info.txt & time/t >> I:\Robocopy\last_sync_time-date_info.txt

REM chkdsk I: /F
pause
@echo on
