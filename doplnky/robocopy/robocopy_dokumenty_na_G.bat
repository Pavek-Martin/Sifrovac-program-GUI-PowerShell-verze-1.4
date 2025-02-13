@echo off
title robocopy_adresar_dokumenty_na_G.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "G:\RoboCopy\Documents" *.* /MIR
date /t > G:\RoboCopy\last_sync_time-date_info.txt & time/t >> G:\Robocopy\last_sync_time-date_info.txt

REM chkdsk G: /F
pause
@echo on
