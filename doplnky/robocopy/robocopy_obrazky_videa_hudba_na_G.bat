@echo off
title robocopy_adresar_obrazky_videa_hudba_na_G.bat
verify on

REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "G:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "G:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "G:\RoboCopy\Music" *.* /MIR

date /t > G:\RoboCopy\last_sync_time-date_info.txt & time/t >> G:\Robocopy\last_sync_time-date_info.txt

REM chkdsk G: /F
pause
@echo on
