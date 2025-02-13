@echo off
title copy selected folder
verify on

set adresar=C:\Users\DELL\Documents\ps1\_testovani_hesla_v1.4
REM echo %adresar%

set kam=R:\
REM echo %kam%

echo "kopiruji %adresar% --> %kam%"
sleep 3

REM robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR
robocopy  %adresar% %kam% *.* /MIR

date /t > R:\last_sync_time-date_info.txt & time/t >> R:\last_sync_time-date_info.txt
REM pause
sleep 3
@echo on
