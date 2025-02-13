@echo off
title robocopy_sync_flesky_E.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "E:\RoboCopy\dvd"
robocopy "C:\Users\DELL\Documents\My Games" "E:\RoboCopy\My Games" *.* /MIR
robocopy "C:\Users\DELL\Documents\gothic3" "E:\RoboCopy\gothic3" *.* /MIR
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "E:\RoboCopy\Lua52_Win32" *.* /MIR
robocopy "C:\Users\DELL\Documents\ubuntu" "E:\RoboCopy\ubuntu" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "E:\RoboCopy\Dev-Cpp" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1" "E:\RoboCopy\ps1" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\iso" "E:\RoboCopy\iso" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\termux_backup" "E:\RoboCopy\termux_backup" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\bordel" "E:\RoboCopy\bordel" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "E:\RoboCopy\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "E:\RoboCopy\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "E:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "E:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents\zaloha\segway_kolobezka_moje" "E:\RoboCopy\segway_kolobezka_moje" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "E:\RoboCopy\save_hry" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "E:\RoboCopy\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "E:\RoboCopy\ruzne" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\moje_prace" "E:\RoboCopy\moje_prace" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "E:\RoboCopy\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt

REM chkdsk E: /F
pause
@echo on
