@echo off

choice /C:01 /M "0-Start VM, 1-Stop VM"
if errorlevel 3 goto end
if errorlevel 2 goto stop
if errorlevel 1 goto start

:start
net start VMAuthdService
net start VMnetDHCP
net start "VMware NAT Service"
rem net start VMUSBArbService
net start ufad-ws60
goto end

:stop
net stop VMAuthdService
net stop VMnetDHCP
net stop "VMware NAT Service"
rem net stop VMUSBArbService
net stop ufad-ws60

:end
echo ---------
echo by bruce
pause>null&&exit