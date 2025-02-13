@echo off
title robocopy_adresar_obrazky_videa_hudba_na_F.bat
verify on
REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "F:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "F:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "F:\RoboCopy\Music" *.* /MIR

date /t > F:\RoboCopy\last_sync_time-date_info.txt & time/t >> F:\Robocopy\last_sync_time-date_info.txt

REM chkdsk F: /F
pause
@echo on
