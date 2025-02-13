@echo off
title robocopy_adresar_obrazky_videa_hudba_na_H.bat
verify on

REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "H:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "H:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "H:\RoboCopy\Music" *.* /MIR

date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on
