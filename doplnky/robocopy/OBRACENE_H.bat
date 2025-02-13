@echo off
title "obracene - Documents, Pictures, Videos, Music H:\ --> C:"
verify on

echo "obracene - Documents, Pictures, Videos, Music H:\ --> C:"
pause

robocopy "H:\RoboCopy\Documents" "C:\Users\DELL\Documents" *.* /MIR

robocopy "H:\RoboCopy\Pictures" "C:\Users\DELL\Pictures" *.* /MIR

robocopy "H:\RoboCopy\Videos" "C:\Users\DELL\Videos" *.* /MIR

robocopy "H:\RoboCopy\Music" "C:\Users\DELL\Music" *.* /MIR

pause
@echo on
