@echo off
title robocopy_adresar_obrazky_videa_hudba_na_E.bat
verify on

REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "E:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "E:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "E:\RoboCopy\Music" *.* /MIR

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt
REM chkdsk E: /F
pause
@echo on
