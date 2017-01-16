#!/bin/bash
#Raspberry Pi Update Program, Written by Silverfox0786
#Version 1.8, 16/01/2017

sudo apt-get update
clear

echo "Version 1.8, 16/01/2017"
echo "Welcome to the Raspberry Pi Software Updater"
echo "This Section will Update your Rasperian Distribution Software not your Test Software"
echo "During update you will be prompted a few times"
echo "This is to protect you from accidental overwrite"
echo "Make sure terminal window is maximised so you can see all the commands"
echo "NOTE: ANY UNVERIFIED UPDATES IN THIS SECTION CAN BREAK YOUR TESTER"
echo "MAKE SURE ALL UPDATES ARE VERIFIED AS WORKING BEFORE PROCEEDING"
	read -p "Do you wish to upgrade your Pi Distribution?" yn
    case $yn in
        [Yy]* ) echo "Upgrading your Distribution"
				echo "This may take 60-100 min or more"
				sleep 2
				sudo apt-get dist-upgrade && sudo apt-get Upgrade -y;;
        [Nn]* ) echo "Not Upgrading anything"
				sleep 2;;
        * ) echo "Answer was assumed NO"
			sleep 2;;
    esac
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
echo "Version 1.8, 16/01/2017"
echo "Welcome to the Raspberry Pi Software Updater"
echo "This Section will Update your Rasperian Web Browser not your Test Software"
echo "During update you will be prompted a few times"
echo "This is to protect you from accidental overwrite"
echo "Make sure terminal window is maximised so you can see all the commands"
echo "NOTE: ANY UNVERIFIED UPDATES IN THIS SECTION CAN BREAK YOUR TESTER"
echo "MAKE SURE ALL UPDATES ARE VERIFIED AS WORKING BEFORE PROCEEDING"
	read -p "Do you wish to upgrade your Web Browser?" yn
    case $yn in
        [Yy]* ) echo "Unistalling Epiphany Browser"
				sleep 2
				sudo apt-get remove epiphany-browser -y
				sudo apt-get autoremove -y
				echo "Installing Chomium Browser"
				sleep 2
				sudo apt-get install chromium-browser -y;;
        [Nn]* ) echo "Not upgrading anything"
				sleep 2;;
        * ) echo "Your Answer was assumed NO"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
echo "Version 1.8, 16/01/2017"
echo "Welcome to the Raspberry Pi Software Updater"
echo "This Section will Install REALVNC not your Test Software"
echo "During update you will be prompted a few times"
echo "This is to protect you from accidental overwrite"
echo "Make sure terminal window is maximised so you can see all the commands"
echo "NOTE: ANY UNVERIFIED UPDATES IN THIS SECTION CAN BREAK YOUR TESTER"
echo "MAKE SURE ALL UPDATES ARE VERIFIED AS WORKING BEFORE PROCEEDING"
	read -p "Do you wish to install REALVNC?" yn
    case $yn in
        [Yy]* ) echo "Installing REALVNC"
				sleep 2
				curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/debian/arm/
				tar xvf VNC.tar.gz -C /update
				cd /update
				sudo dpkg -i VNC-Viewer-5.3.2-Linux-ARM.deb
				sudo dpkg -i VNC-Server-5.3.2-Linux-ARM.deb;;
        [Nn]* ) echo "Not installing anything"
				sleep 2;;
        * ) echo "Your Answer was assumed NO"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
echo "Version 1.8, 16/01/2017"
echo "Welcome to the Raspberry Pi Software Updater"
echo "This Section will Install Bless Hex Editor not your Test Software"
echo "During update you will be prompted a few times"
echo "This is to protect you from accidental overwrite"
echo "Make sure terminal window is maximised so you can see all the commands"
echo "NOTE: ANY UNVERIFIED UPDATES IN THIS SECTION CAN BREAK YOUR TESTER"
echo "MAKE SURE ALL UPDATES ARE VERIFIED AS WORKING BEFORE PROCEEDING"
	read -p "Do you wish to install Bless?" yn
    case $yn in
        [Yy]* ) echo "Installing Bless"
				sleep 2
				sudo apt-get install bless;;
        [Nn]* ) echo "Not installing anything"
				sleep 2;;
        * ) echo "Your Answer was assumed NO"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear

    read -p "Upgrade Finished Do you wish to Restart the Tester?" yn
    case $yn in
        [Yy]* ) sudo shutdown -r now;;
        [Nn]* ) echo "Rememeber to Restart your Tester manually for changes to take effect"
				echo "Updater Finished"
				sleep 5
				exit;;
        * ) echo "Your Answer was assumed NO, Restart Cancelled"
			echo "Rememeber to Restart your Tester manually for changes to take effect"
			echo "Updater Finished"
			sleep 5
			exit;;
    esac
fi
exit 0
