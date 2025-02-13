@echo off
title robocopy_sync_flesky_H.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "H:\RoboCopy\dvd"
robocopy "C:\Users\DELL\Documents\My Games" "H:\RoboCopy\My Games" *.* /MIR
robocopy "C:\Users\DELL\Documents\gothic3" "H:\RoboCopy\gothic3" *.* /MIR
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "H:\RoboCopy\Lua52_Win32" *.* /MIR
robocopy "C:\Users\DELL\Documents\ubuntu" "H:\RoboCopy\ubuntu" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "H:\RoboCopy\Dev-Cpp" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1" "H:\RoboCopy\ps1" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\iso" "H:\RoboCopy\iso" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\termux_backup" "H:\RoboCopy\termux_backup" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\bordel" "H:\RoboCopy\bordel" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "H:\RoboCopy\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "H:\RoboCopy\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "H:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "H:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents\zaloha\segway_kolobezka_moje" "H:\RoboCopy\segway_kolobezka_moje" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "H:\RoboCopy\save_hry" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "H:\RoboCopy\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "H:\RoboCopy\ruzne" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\moje_prace" "H:\RoboCopy\moje_prace" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "H:\RoboCopy\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on



