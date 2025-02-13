@echo off
title input_12.bat
verify on
color 07
:menu
echo " [0] C:\Users\DELL\Documents\Dev-C --> E:\RoboCopy\Dev-C"
echo " [1] C:\Users\DELL\Documents\ps1 --> E:\RoboCopy\ps1"
echo " [2] C:\Users\DELL\Documents\ubuntu --> E:\RoboCopy\ubuntu"
echo " [3] C:\Users\DELL\Documents\Lua52_Win32 --> E:\RoboCopy\Lua52_Win32"
echo " [4] C:\Users\DELL\Pictures\Ballon_story --> E:\RoboCopy\Pictures\Ballon_story"
echo " [5] C:\Users\DELL\Documents\Dos --> E:\RoboCopy\Dos"
echo " [6] C:\Users\DELL\Pictures --> E:\RoboCopy\Pictures"
echo " [7] C:\Users\DELL\Documents\PDF --> E:\RoboCopy\PDF"
echo " [8] C:\Users\DELL\Pictures\Screenshots --> E:\RoboCopy\Pictures\Screenshots"
echo " [9] C:\Users\DELL\Videos --> E:\RoboCopy\Videos"
echo "[10] C:\Users\DELL\Documents\zaloha\ruzne --> E:\RoboCopy\ruzne"
echo "[11] C:\Users\DELL\Documents\zaloha\save_hry --> E:\RoboCopy\save_hry"
echo "[12] C:\Users\DELL\Music --> E:\RoboCopy\Music"
echo "[13] C:\Users\DELL\Documents\My Games"
echo "[14] C:\Users\DELL\Documents\zaloha\dvd_katalog --> E:\RoboCopy\dvd_katalog"
echo "     C:\Users\DELL\Documents\dvd --> E:\RoboCopy\dvd
echo "[15] C:\Users\DELL\Pictures --> E:\RoboCopy\Pictures"
echo "     C:\Users\DELL\Videos --> E:\RoboCopy\Videos"
echo "     C:\Users\DELL\Music --> E:\RoboCopy\Music"
echo "[16] C:\Users\DELL\Documents\Dos --> E:\RoboCopy\Dos"
echo "     C:\Users\DELL\Documents\PDF --> E:\RoboCopy\PDF"
echo "[17] C:\Users\DELL\Documents\ps1 --> E:\RoboCopy\ps1"
echo "     C:\Users\DELL\Documents\ubuntu --> E:\RoboCopy\ubuntu"
echo "     C:\Users\DELL\Documents\Lua52_Win32 --> E:\RoboCopy\Lua52_Win32"
echo "     C:\Users\DELL\Documents\Dev-C --> E:\RoboCopy\Dev-Cpp"
echo "[18] C:\Users\DELL\Documents\256_Basic --> E:\RoboCopy\256_Basic"
echo "     C:\Users\DELL\Documents\java_script --> E:\RoboCopy\java_script"
echo "[19] C:\Users\DELL\Documents\zaloha\ruzne --> E:\RoboCopy\ruzne"
echo "     C:\Users\DELL\Documents\zaloha\save_hry --> E:\RoboCopy\save_hry"
echo "     C:\Users\DELL\Desktop --> E:\RoboCopy\Desktop
echo "[20] C:\Users\DELL\Documents\zaloha --> E:\RoboCopy\zaloha"
echo "[21] Dokumenty all save games --> E:\RoboCopy\savegames"

REM echo "cokoliv jineho pro ukonceni programu"
set volba=xxx
set /p volba="zadej 0 - 21 a nebo Enter = konec ?:
REM jenom enter bez nice ho ted vlozi hodnou xxx
REM echo %volba%

if %volba%==0 (goto 0)
if %volba%==1 (goto 1)
if %volba%==2 (goto 2)
if %volba%==3 (goto 3)
if %volba%==4 (goto 4)
if %volba%==5 (goto 5)
if %volba%==6 (goto 6)
if %volba%==7 (goto 7)
if %volba%==8 (goto 8)
if %volba%==9 (goto 9)
if %volba%==10 (goto 10)
if %volba%==11 (goto 11)
if %volba%==12 (goto 12)
if %volba%==13 (goto 13)
if %volba%==14 (goto 14)
if %volba%==15 (goto 15)
if %volba%==16 (goto 16)
if %volba%==17 (goto 17)
if %volba%==18 (goto 18)
if %volba%==19 (goto 19)
if %volba%==20 (goto 20)
if %volba%==21 (goto 21)

REM sem skoci kdyz neproslo zadnou z predeslich podminek
REM echo Spatne zadani, konec programu
goto konec2

:0
echo "C:\Users\DELL\Documents\Dev-C --> E:\RoboCopy\Dev-C"
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "E:\RoboCopy\Dev-Cpp" *.* /MIR
goto konec

:1
echo "C:\Users\DELL\Documents\ps1 --> E:\RoboCopy\ps1"
robocopy "C:\Users\DELL\Documents\ps1" "E:\RoboCopy\ps1" *.* /MIR
goto konec

:2
echo "C:\Users\DELL\Documents\ubuntu --> E:\RoboCopy\ubuntu"
robocopy "C:\Users\DELL\Documents\ubuntu" "E:\RoboCopy\ubuntu" *.* /MIR
goto konec

:3
echo "C:\Users\DELL\Documents\Lua52_Win32 --> E:\RoboCopy\Lua52_Win32"
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "E:\RoboCopy\Lua52_Win32" *.* /MIR
goto konec

:4
echo "C:\Users\DELL\Pictures\Ballon_story --> E:\RoboCopy\Pictures\Ballon_story"
robocopy "C:\Users\DELL\Pictures\Ballon_story" "E:\RoboCopy\Pictures\Ballon_story" *.* /MIR
goto konec

:5
echo "C:\Users\DELL\Documents\Dos --> E:\RoboCopy\Dos"
robocopy "C:\Users\DELL\Documents\Dos" "E:\RoboCopy\Dos" *.* /MIR
goto konec

:6
echo "C:\Users\DELL\Pictures --> E:\RoboCopy\Pictures"
robocopy "C:\Users\DELL\Pictures" "E:\RoboCopy\Pictures" *.* /MIR
goto konec

:7
echo "C:\Users\DELL\Documents\PDF --> E:\RoboCopy\PDF"
robocopy "C:\Users\DELL\Documents\PDF" "E:\RoboCopy\PDF" *.* /MIR
goto konec

:8
echo "C:\Users\DELL\Pictures\Screenshots --> E:\RoboCopy\Pictures\Screenshots"
robocopy "C:\Users\DELL\Pictures\Screenshots" "E:\RoboCopy\Pictures\Screenshots" *.* /MIR
goto konec

:9
echo "C:\Users\DELL\Videos --> E:\RoboCopy\Videos"
robocopy "C:\Users\DELL\Videos" "E:\RoboCopy\Videos" *.* /MIR
goto konec

:10
echo "C:\Users\DELL\Documents\zaloha\ruzne --> E:\RoboCopy\ruzne"
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "E:\RoboCopy\ruzne" *.* /MIR
goto konec

:11
echo "C:\Users\DELL\Documents\zaloha\save_hry --> E:\RoboCopy\save_hry"
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "E:\RoboCopy\save_hry" *.* /MIR
goto konec

:12
echo "C:\Users\DELL\Music -- > E:\RoboCopy\Music"
robocopy "C:\Users\DELL\Music" "E:\RoboCopy\Music" *.* /MIR
goto konec

:13
echo "C:\Users\DELL\Documents\My Games --> E:\RoboCopy\My Games"
robocopy "C:\Users\DELL\Documents\My Games" "E:\RoboCopy\My Games" *.* /MIR
goto konec

:14
echo "C:\Users\DELL\Documents\zaloha\dvd_katalog --> E:\RoboCopy\dvd_katalog"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "E:\RoboCopy\dvd_katalog" *.* /MIR

echo "C:\Users\DELL\Documents\dvd --> E:\RoboCopy\dvd
copy/y C:\Users\DELL\Documents/dvd E:\RoboCopy\dvd

echo "C:\Users\DELL\Documents\dvd --> E:\dvd
copy/y C:\Users\DELL\Documents/dvd E:\dvd

REM /y = yes overwrite
goto konec

:15
echo "C:\Users\DELL\Pictures --> E:\RoboCopy\Pictures"
robocopy "C:\Users\DELL\Pictures" "E:\RoboCopy\Pictures" *.* /MIR

echo "C:\Users\DELL\Videos --> E:\RoboCopy\Videos"
robocopy "C:\Users\DELL\Videos" "E:\RoboCopy\Videos" *.* /MIR

echo "C:\Users\DELL\Music -- > E:\RoboCopy\Music"
robocopy "C:\Users\DELL\Music" "E:\RoboCopy\Music" *.* /MIR
goto konec

:16
echo "C:\Users\DELL\Documents\Dos --> E:\RoboCopy\Dos"
robocopy "C:\Users\DELL\Documents\Dos" "E:\RoboCopy\Dos" *.* /MIR

echo "C:\Users\DELL\Documents\PDF --> E:\RoboCopy\PDF"
robocopy "C:\Users\DELL\Documents\PDF" "E:\RoboCopy\PDF" *.* /MIR
goto konec

:17
echo "C:\Users\DELL\Documents\ps1 --> E:\RoboCopy\ps1"
robocopy "C:\Users\DELL\Documents\ps1" "E:\RoboCopy\ps1" *.* /MIR

echo "C:\Users\DELL\Documents\ubuntu --> E:\RoboCopy\ubuntu"
robocopy "C:\Users\DELL\Documents\ubuntu" "E:\RoboCopy\ubuntu" *.* /MIR

echo "C:\Users\DELL\Documents\Lua52_Win32 --> E:\RoboCopy\Lua52_Win32"
robocopy "C:\Users\DELL\Documents\Lua52_Win32" "E:\RoboCopy\Lua52_Win32" *.* /MIR

echo "C:\Users\DELL\Documents\Dev-C --> E:\RoboCopy\Dev-C"
robocopy "C:\Users\DELL\Documents\Dev-Cpp" "E:\RoboCopy\Dev-Cpp" *.* /MIR
goto konec

:18
echo "C:\Users\DELL\Documents\256_Basic --> E:\RoboCopy\256_Basic"
robocopy "C:\Users\DELL\Documents\256_Basic" "E:\RoboCopy\256_Basic" *.* /MIR

echo "C:\Users\DELL\Documents\java_script --> E:\RoboCopy\java_script"
robocopy "C:\Users\DELL\Documents\java_script" "E:\RoboCopy\java_script" *.* /MIR
goto konec

:19
echo "C:\Users\DELL\Documents\zaloha\ruzne --> E:\RoboCopy\ruzne"
robocopy "C:\Users\DELL\Documents\zaloha\ruzne" "E:\RoboCopy\ruzne" *.* /MIR

echo "C:\Users\DELL\Documents\zaloha\save_hry --> E:\RoboCopy\save_hry"
robocopy "C:\Users\DELL\Documents\zaloha\save_hry" "E:\RoboCopy\save_hry" *.* /MIR

echo "C:\Users\DELL\Desktop --> E:\RoboCopy\Desktop"
robocopy "C:\Users\DELL\Desktop" "E:\RoboCopy\Desktop" *.* /MIR
goto konec

:20
echo "C:\Users\DELL\Documents\zaloha --> E:\RoboCopy\zaloha"
robocopy "C:\Users\DELL\Documents\zaloha" "E:\RoboCopy\zaloha" *.* /MIR
goto konec

:21
echo "C:\Users\DELL\Documents\GTA3 User Files --> E:\RoboCopy\Documents\savegame\GTA3 User Files"
robocopy "C:\Users\DELL\Documents\GTA3 User Files" "E:\RoboCopy\Documents\savegame\GTA3 User Files" *.* /MIR

echo "C:\Users\DELL\Documents\gothic3 --> E:\RoboCopy\Documents\savegame\gothic3"
robocopy "C:\Users\DELL\Documents\gothic3" "E:\RoboCopy\Documents\savegame\gothic3" *.* /MIR
REM goto konec

:konec
pause
cls
goto menu
:konec2
@echo on
