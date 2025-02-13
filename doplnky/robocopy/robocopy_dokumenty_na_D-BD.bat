@echo off
title robocopy_adresar_dokumenty_na_D-BD.bat
verify on

REM robocopy "" "" *.* /MIR

robocopy "C:\Users\DELL\Documents" "D:\RoboCopy\Documents" *.* /MIR

date /t > D:\RoboCopy\last_sync_time-date_info.txt & time/t >> D:\Robocopy\last_sync_time-date_info.txt

pause
@echo on
REM zalohuje na BlueRay disk na kterem musi byt format windows 10 jako flash disk
