@echo off
CLS 
color 0a

echo.
echo.   clean recent vs projects
echo.  --- by Bruce 2011/07/21 ---
echo.

@echo off
@REG Delete HKCU\Software\Microsoft\VisualStudio\7.1\FileMRUList /va /f
@REG Delete HKCU\Software\Microsoft\VisualStudio\7.1\ProjectMRUList /va /f
@REG Delete HKCU\Software\Microsoft\VisualStudio\8.0\FileMRUList /va /f
@REG Delete HKCU\Software\Microsoft\VisualStudio\8.0\ProjectMRUList /va /f
@REG Delete HKCU\Software\Microsoft\VisualStudio\9.0\FileMRUList /va /f
@REG Delete HKCU\Software\Microsoft\VisualStudio\9.0\ProjectMRUList /va /f
