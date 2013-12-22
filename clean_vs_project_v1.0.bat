@echo off
CLS
color 0a

goto MENU

:MENU
echo.
echo. clean specified type useless files in current project
echo.         --- v1.0 by Bruce 2011/07/21 ---
echo.
echo. are you sure?(y/n):
set /p ID=
if "%ID%"=="y" goto START
if "%ID%"=="n" goto END
pause
echo.

:START
@echo start...
echo.

for /r . %%f in (
*.ncb *.idb *.obj *.pch *.ilk *.tlb *.tli *.opt *.tmp *.rsp *.pgc *.pgd *.meta *.user *.aps *.exp) do (
del /f /q "%%f" & echo %%f --- deleted)
echo.

@echo completed!
echo.

:END
@echo exit now!
pause>nul
