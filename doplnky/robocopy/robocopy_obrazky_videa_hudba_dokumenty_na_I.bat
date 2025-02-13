@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_I.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents" "I:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "I:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "I:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "I:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "I:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > I:\RoboCopy\last_sync_time-date_info.txt & time/t >> I:\Robocopy\last_sync_time-date_info.txt

REM chkdsk I: /F
pause
@echo on
