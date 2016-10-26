#!/bin/bash
#Raspberry Pi Update Program, Written by Silverfox0786
#Version 1.5, 26/10/2016

echo "Version 1.5 26/10/2016"
echo "Welcome to the Raspberry Pi Software Updater"
echo "During update you will be prompted a few times"
echo "Make sure terminal window is maximised so you can see all the commands"
echo "The main command to retunr when needed with be Q to quit and continue"

read -p "Do you wish to upgrade your Pi Distribution?" yn
    case $yn in
        [Yy]* ) echo "Upgrading your Distribution"
				sleep 2
				sudo apt-get dist-upgrade -y;;
        [Nn]* ) echo "Not Upgrading anything"
				sleep 2;;
        * ) echo "Your Answer was assumed NO"
			sleep 2;;
    esac
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
    read -p "Do you wish to upgrade your Kernal Firmware?" yn
    case $yn in
        [Yy]* ) echo "Upgrading your Kernal Firmware"
				sleep 2
				sudo apt-get rpi-update			;;
        [Nn]* ) echo "Not Updating anything"
				sleep 2;;
        * ) echo "Your Answer was assumed NO"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
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
echo "Pi Updated"
echo "Continuing onto Tester Updating"
echo "Remember to Restart the Tester at the end of Intallation"
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
lxterminal -e /home/pi/update/testupdate.bash
fi
exit 0
