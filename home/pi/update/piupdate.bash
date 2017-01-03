#!/bin/bash
#Raspberry Pi Update Program, Written by Silverfox0786
#Version 1.7, 03/01/2017

echo "Version 1.7, 03/01/2017"
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
				sudo apt-get dist-upgrade -y;;
        [Nn]* ) echo "Not Upgrading anything"
				sleep 2;;
        * ) echo "Answer was assumed NO"
			sleep 2;;
    esac
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
echo "Version 1.7, 03/01/2017"
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
        [Nn]* ) echo "Not Upgrading anything, Exiting"
				sleep 2
				lxterminal -e /home/pi/update/testupdate.bash
				exit;;
        * ) echo "Your Answer was assumed NO, Exiting"
			sleep 2
			lxterminal -e /home/pi/update/testupdate.bash
			exit;;
    esac
fi
clear
echo "Version 1.7, 03/01/2017"
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
				curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/debian/arm/ /tmp
				tar xvf VNC.tar.gz -C /tmp
				cd /tmp
				sudo dpkg -i VNC-Viewer-5.3.2-Linux-ARM.deb
				sudo dpkg -i VNC-Server-5.3.2-Linux-ARM.deb;;
        [Nn]* ) echo "Not Upgrading anything, Exiting"
				sleep 2
				lxterminal -e /home/pi/update/testupdate.bash
				exit;;
        * ) echo "Your Answer was assumed NO, Exiting"
			sleep 2
			lxterminal -e /home/pi/update/testupdate.bash
			exit;;
    esac
fi
clear
echo "Rasperian Software Updated"
echo "Continuing onto Tester Update"
echo "Remember to Restart the Tester at the end of Installation"
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
lxterminal -e /home/pi/update/testupdate.bash
fi
exit 0
