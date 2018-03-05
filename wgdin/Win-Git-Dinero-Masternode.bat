rem Windows - Git and execute Dinero Masternode batch file

rem CobraKenji
rem Feel free to donate 
rem BTC - 1HgPZvFRKuvsuLXwRtrLsJsws7ivZQScJt
rem DIN  DQ3Q59RHAD5T1reZGLXS5ernnZrNW3EJZ1

@echo off
title din-wgdm
color 7C
:start
cls
echo ##
echo git-and-execute-dinero-masternode-install - v0.1.7
echo cobrakenji
echo DIN  DQ3Q59RHAD5T1reZGLXS5ernnZrNW3EJZ1
timeout /t 5

echo ##################################################
echo ##    git clone then setup Dinero Masternode    ##
echo ##################################################
echo ## 
echo ## You MUST install PuTTY from:
echo #######	https://putty.org/   ######
echo ##
echo ## This will connect to your VPS to log in as root
echo ## then create a new user for you to use on the VPS.
echo ##
echo ## You will then re-connect to your VPS with your
echo ## new user to setup the masternode...
echo ##
echo ## Note that I am lazy and did not obscure your
echo ## inputs. Some passwords will be typed out in
echo ## plain text but rest assured, none are saved.
timeout /t 10
echo ##
echo ## Dinero masternode will git and install from: 
echo ## https://github.com/CobraKenji/dinero
echo ##
echo ## Please ensure you have sent yourself 5000 DIN in 
echo ## ONE transaction, you will need your genkey and 
echo ## and your output now.
echo ##
echo ## Go to https://discord.gg/VHhNbuR for more help.
echo ##
echo ##

set /p nothing="## Enter VPS root password: "
set /p something="## Enter IP address of VPS: "
echo ##
set /p aliasthing="##  Enter your masternode ALIAS: "
set /p genthing="##  Carefully enter your GENKEY: "
set /p outthing="##  Carefully enter your OUTPUT: "
echo.&echo.
echo.&echo.

rem Generate masternode.conf for the last bit
echo %aliasthing% %something%:26285 %genthing% %outthing% >> masternode-example.conf

timeout /t 3
putty.exe -ssh root@%something% -pw %nothing% -m gitandexecute-setup.txt -t
exit