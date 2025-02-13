@echo off
title "obracene - Documents, Pictures, Videos, Music E:\ --> C:"
verify on

echo "obracene - Documents, Pictures, Videos, Music E:\ --> C:"
pause

robocopy "E:\RoboCopy\Documents" "C:\Users\DELL\Documents" *.* /MIR

robocopy "E:\RoboCopy\Pictures" "C:\Users\DELL\Pictures" *.* /MIR

robocopy "E:\RoboCopy\Videos" "C:\Users\DELL\Videos" *.* /MIR

robocopy "E:\RoboCopy\Music" "C:\Users\DELL\Music" *.* /MIR

pause
@echo on
