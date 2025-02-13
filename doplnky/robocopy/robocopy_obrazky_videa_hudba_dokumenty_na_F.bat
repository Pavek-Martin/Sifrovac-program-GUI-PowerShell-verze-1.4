@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_F.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "F:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "F:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "F:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "F:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "F:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > F:\RoboCopy\last_sync_time-date_info.txt & time/t >> F:\Robocopy\last_sync_time-date_info.txt

REM chkdsk F: /F
pause
@echo on
