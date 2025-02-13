@echo off
title "obracene - Documents, Pictures, Videos, Music G:\ --> C:"
verify on

echo "obracene - Documents, Pictures, Videos, Music G:\ --> C:"
pause

robocopy "G:\RoboCopy\Documents" "C:\Users\DELL\Documents" *.* /MIR

robocopy "G:\RoboCopy\Pictures" "C:\Users\DELL\Pictures" *.* /MIR

robocopy "G:\RoboCopy\Videos" "C:\Users\DELL\Videos" *.* /MIR

robocopy "G:\RoboCopy\Music" "C:\Users\DELL\Music" *.* /MIR

pause
@echo on
