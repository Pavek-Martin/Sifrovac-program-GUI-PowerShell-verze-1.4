@echo off
title robocopy_sync_flesky_I.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "I:\RoboCopy\dvd"
robocopy "C:\Users\DELL\Documents\My Games" "I:\RoboCopy\My Games" *.* /MIR
robocopy "C:\Users\DELL\Documents\gothic3" "I:\RoboCopy\gothic3" *.* /MIR
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "I:\RoboCopy\Lua52_Win32" *.* /MIR
robocopy "C:\Users\DELL\Documents\ubuntu" "I:\RoboCopy\ubuntu" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "I:\RoboCopy\Dev-Cpp" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1" "I:\RoboCopy\ps1" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\iso" "I:\RoboCopy\iso" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\termux_backup" "I:\RoboCopy\termux_backup" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\bordel" "I:\RoboCopy\bordel" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "I:\RoboCopy\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "I:\RoboCopy\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "I:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "I:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents\zaloha\segway_kolobezka_moje" "I:\RoboCopy\segway_kolobezka_moje" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "I:\RoboCopy\save_hry" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "I:\RoboCopy\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "I:\RoboCopy\ruzne" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\moje_prace" "I:\RoboCopy\moje_prace" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "I:\RoboCopy\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

date /t > I:\RoboCopy\last_sync_time-date_info.txt & time/t >> I:\Robocopy\last_sync_time-date_info.txt

REM chkdsk I: /F
pause
@echo on



