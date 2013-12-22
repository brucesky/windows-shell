@echo off

echo.
echo. --- IP Auto Config v1.0 by Bruce 2012/05/08 ---
echo.

echo. ----------------------------------------------------------------

rem nic
set nic=本地连接

rem ip
set ip=192.168.1.53
rem mask
set mask=255.255.255.0
rem gateway
set gateway=192.168.1.1
rem dns1
set dns1=192.168.1.1
rem dns2
set dns2=202.101.172.35

echo. My god, Where are you?
echo. 1: At Home.
echo. 2: At Company.

set /p place=
goto %place%

:1
goto START

:2
set ip=192.168.172.53
set gateway=192.168.172.254
set dns1=192.168.99.99


:START
echo.Start...
rem
echo. Nic: %nic%
echo. IP: %ip% 
echo. Mask: %mask%  
echo. Gateway: %gateway% 
echo. Dns: %dns1%
echo.      %dns2%

netsh interface ipv4 set address name=%nic% source=static addr=%ip% mask=%mask% gateway=%gateway% gwmetric=1 >nul 

netsh interface ipv4 set dns name=%nic% source=static addr=%dns1% register=PRIMARY >nul 
netsh interface ipv4 add dns name=%nic% addr=%dns2% index=2 >nul 

echo. ----------------------------------------------------------------

:END
echo Completed! Enjoy it.
rem pause >nul
