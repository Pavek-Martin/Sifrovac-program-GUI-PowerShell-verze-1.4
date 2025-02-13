@echo off
title robocopy_adresar_obrazky_videa_hudba_na_I.bat
verify on

REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "I:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "I:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "I:\RoboCopy\Music" *.* /MIR

date /t > I:\RoboCopy\last_sync_time-date_info.txt & time/t >> I:\Robocopy\last_sync_time-date_info.txt

REM chkdsk I: /F
pause
@echo on
