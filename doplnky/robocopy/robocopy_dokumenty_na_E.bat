@echo off
title robocopy_adresar_dokumenty_na_E.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt

REM chkdsk E: /F
pause
@echo on
