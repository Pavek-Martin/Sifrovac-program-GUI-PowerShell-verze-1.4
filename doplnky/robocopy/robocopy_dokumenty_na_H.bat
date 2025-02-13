@echo off
title robocopy_adresar_dokumenty_na_H.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "H:\RoboCopy\Documents" *.* /MIR
date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on
