@echo off
title robocopy_adresar_dokumenty_na_F.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "F:\RoboCopy\Documents" *.* /MIR
date /t > F:\RoboCopy\last_sync_time-date_info.txt & time/t >> F:\Robocopy\last_sync_time-date_info.txt

REM chkdsk F: /F
pause
@echo on
