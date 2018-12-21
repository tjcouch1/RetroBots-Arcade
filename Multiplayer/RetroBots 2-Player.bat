@echo off
start cmd /C "RetroBots Player 2.bat"
start cmd /C "RetroBots Player 1.bat"

ping 1.0.0.0 -n 1 -w 2000 > nul
REM Increase 2000 by increments of 1000 if some window appears between the games or games don't close together

:windowsOpen

ping 1.0.0.0 -n 1 -w 200 > nul

FOR /F "tokens=* USEBACKQ" %%F IN (`tasklist /FI "WINDOWTITLE eq RetroBots Online" ^| find/c "exe"`) DO (
SET windowcount=%%F
)

if "%windowcount%" LEQ "1" (
TASKKILL /IM "RetroBots Online.exe"
) ELSE (
GOTO windowsOpen
)

