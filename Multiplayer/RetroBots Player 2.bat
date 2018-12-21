@echo off
start "" "RetroBots Online.exe" -userrange 5 9 -controllerl 0 -position bottom
ping 1.0.0.0 -n 1 -w 2000 > nul
REM Increase 2000 by increments of 1000 if some window appears between the games or games don't close together