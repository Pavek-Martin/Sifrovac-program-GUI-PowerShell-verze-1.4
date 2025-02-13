@echo off
title robocopy_sync_flesky_F.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "F:\RoboCopy\dvd"
robocopy "C:\Users\DELL\Documents\My Games" "F:\RoboCopy\My Games" *.* /MIR
robocopy "C:\Users\DELL\Documents\gothic3" "F:\RoboCopy\gothic3" *.* /MIR
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "F:\RoboCopy\Lua52_Win32" *.* /MIR
robocopy "C:\Users\DELL\Documents\ubuntu" "F:\RoboCopy\ubuntu" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "F:\RoboCopy\Dev-Cpp" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1" "F:\RoboCopy\ps1" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\iso" "F:\RoboCopy\iso" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\termux_backup" "F:\RoboCopy\termux_backup" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\bordel" "F:\RoboCopy\bordel" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "F:\RoboCopy\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "F:\RoboCopy\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "F:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "F:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents\zaloha\segway_kolobezka_moje" "F:\RoboCopy\segway_kolobezka_moje" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "F:\RoboCopy\save_hry" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "F:\RoboCopy\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "F:\RoboCopy\ruzne" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\moje_prace" "F:\RoboCopy\moje_prace" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "F:\RoboCopy\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

date /t > F:\RoboCopy\last_sync_time-date_info.txt & time/t >> F:\Robocopy\last_sync_time-date_info.txt

REM chkdsk F: /F
pause
@echo on



