@echo off
title "obracene - Documents, Pictures, Videos, Music F:\ --> C:"
verify on

echo "obracene - Documents, Pictures, Videos, Music F:\ --> C:"
pause

robocopy "F:\RoboCopy\Documents" "C:\Users\DELL\Documents" *.* /MIR

robocopy "F:\RoboCopy\Pictures" "C:\Users\DELL\Pictures" *.* /MIR

robocopy "F:\RoboCopy\Videos" "C:\Users\DELL\Videos" *.* /MIR

robocopy "F:\RoboCopy\Music" "C:\Users\DELL\Music" *.* /MIR

pause
@echo on
