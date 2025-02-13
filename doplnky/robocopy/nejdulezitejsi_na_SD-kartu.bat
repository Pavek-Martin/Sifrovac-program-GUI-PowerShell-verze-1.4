@echo off
title nejdulezitejsi_na_SD-kartu.bat
verify on

REM robocopy "" "" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "E:\RoboCopy\Dev-Cpp" *.* /MIR
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "E:\RoboCopy\Lua52_Win32" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1" "E:\RoboCopy\ps1" *.* /MIR
robocopy "C:\Users\DELL\Documents\ubuntu" "E:\RoboCopy\ubuntu" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "E:\RoboCopy\ruzne" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "E:\RoboCopy\save_hry" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "E:\RoboCopy\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\Dos" "E:\RoboCopy\Dos" *.* /MIR
robocopy "C:\Users\DELL\Documents\PDF" "E:\RoboCopy\PDF" *.* /MIR
robocopy "C:\Users\DELL\Pictures" "E:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "E:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "E:\RoboCopy\Music" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha" "E:\RoboCopy\zaloha" *.* /MIR
robocopy "C:\Users\DELL\Desktop" "E:\RoboCopy\Desktop" *.* /MIR
robocopy "C:\Users\DELL\Documents\gothic3" "E:\RoboCopy\Documents\savegame\gothic3" *.* /MIR
robocopy "C:\Users\DELL\Documents\GTA3 User Files" "E:\RoboCopy\Documents\savegame\GTA3 User Files" *.* /MIR
robocopy "C:\Users\DELL\Documents\BaseCamp" "E:\RoboCopy\BaseCamp" *.* /MIR
robocopy "C:\Users\DELL\Documents\dnes" "E:\RoboCopy\dnes" *.* /MIR
robocopy "C:\Users\DELL\Documents\My Games" "E:\RoboCopy\My Games" *.* /MIR
robocopy "C:\Users\DELL\Saved Games" "E:\RoboCopy\Saved Games" *.* /MIR


robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "E:\Sifrovaci_program_GUI" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "E:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt

REM chkdsk E: /F
pause
@echo on
