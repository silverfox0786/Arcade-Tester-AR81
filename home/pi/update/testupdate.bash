#!/bin/bash
#AR81 Tester Update Program, Written by Silverfox0786
#Version 1.6, 26/12/2016

echo "Version 1.6 26/12/2016"
echo "Welcome to the AR81 Test Program Software Updater"
echo "During update you will be prompted many times"
echo "This is to protect your data from accidental overwrite"
echo "Pressing ENTER without a command will assume a NO Command"
read -p "Do you wish to update your tester?" yn
    case $yn in
        [Yy]* ) if [ ! -f  /tmp/master.tar.gz ]
				then
				echo "Downloading Update Files from Git"
				sleep 2
				wget https://github.com/silverfox0786/Arcade-Tester-AR81/archive/master.tar.gz -P /tmp
				echo "Extracting Tarball"
				sleep 2
				tar -zxvf /tmp/master.tar.gz -C /tmp
				echo "Extraction Complete"
				sleep 2
				else
				echo "Extracting Tarball"
				sleep 2
				tar -zxvf /tmp/master.tar.gz -C /tmp
				echo "Extraction Complete"
				sleep 2
				fi;;
        [Nn]* ) echo "Not Updating anything, Exiting"
				sleep 2
				exit;;
        * ) echo "Your Answer was assumed NO, Exiting"
			sleep 2
			exit;;
    esac
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
    read -p "Do you wish to update your Devices Library?" yn
    case $yn in
        [Yy]* ) if [ ! -d  /home/pi/Desktop/Devices/ ]
				then
				echo "No Device Folder Found, Creating"
				sleep 2
				mkdir /home/pi/Desktop/Devices/
				echo "Adding Latest Device Files"
				sleep 2
				cp -R /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/Devices -P /home/pi/Desktop
				echo "All Files Added Successfully"
				sleep 2
				else
				echo "Updating Device Files"
				sleep 2
				cp -R -i /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/Devices -P /home/pi/Desktop
				echo "All Selected Files Updated Successfully"
				sleep 2
				fi;;
        [Nn]* ) echo "Devices Not Updated, Moving On"
				sleep 2;;
        * ) echo "Your Answer was assumed NO, Devices not updated"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
	read -p "Do you wish to update your ROMS Library?" yn
    case $yn in
        [Yy]* ) if [ ! -d  /home/pi/Desktop/ROMS/ ]
				then
				echo "No ROMS Folder Found, Creating"
				sleep 2
				mkdir /home/pi/Desktop/ROMS/
				echo "Adding Latest ROMS Files"
				sleep 2
				cp -R /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/ROMS -P /home/pi/Desktop
				echo "All Files Added Successfully"
				sleep 2
				else
				echo "Updating ROMS Files"
				sleep 2
				cp -R -i /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/ROMS -P /home/pi/Desktop
				echo "All Selected Files Updated Successfully"
				sleep 2
				fi;;
        [Nn]* ) echo "ROMS Not Updated, Moving On"
				sleep 2;;
        * ) echo "Your Answer was assumed NO, ROMS not updated"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
	read -p "Do you wish to update your Test Progs Library?" yn
    case $yn in
        [Yy]* ) if [ ! -d  /home/pi/Desktop/"Test Progs"/ ]
				then
				echo "No Test Progs Folder Found, Creating"
				sleep 2
				mkdir /home/pi/Desktop/"Test Progs"
				echo "Adding Latest Test Progs Files"
				sleep 2
				cp -R /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/"Test Progs" -P /home/pi/Desktop/
				echo "All Files Added Successfully"
				sleep 2
				else
				echo "Updating Test Progs Files"
				sleep 2
				cp -R -i /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/"Test Progs" -P /home/pi/Desktop/
				echo "All Selected Files Updated Successfully"
				sleep 2
				fi;;
        [Nn]* ) echo "Test Progs Not Updated, Moving On"
				sleep 2;;
        * ) echo "Your Answer was assumed NO, Test Progs not updated"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
	read -p "Do you want to add a Images Folder for Screenshots?" yn
    case $yn in
        [Yy]* ) if [ ! -d  /home/pi/Desktop/Images/ ]
				then
				echo "No Images Folder Found, Creating"
				sleep 2
				mkdir /home/pi/Desktop/Images
				sleep 2
				else
				echo "Doh! Images Folder already Present"
				sleep 2
				fi;;
        [Nn]* ) echo "Images Folder not Created, Moving On"
				sleep 2;;
        * ) echo "Your Answer was assumed NO, Images Folder not Created"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
    read -p "Do you wish to update your test Software?" yn
    case $yn in
        [Yy]* ) echo "Uninstalling old Test Software, If Installed"
				sleep 2
				rm -fr /home/pi/Test/
				echo "Installing New Test Software"
				sleep 2
				cp -R /tmp/Arcade-Tester-AR81-master/home/pi/Test -P /home/pi/Test
				if [ ! -f  /home/pi/Downloads/testicon.gif ]
				echo "Test Program Sucessfully Installed"
				sleep 2
				then
				echo "Adding New Icon File"
				sleep 2
				chown pi /home/pi/Downloads/
				cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/testicon.gif /home/pi/Downloads/testicon.gif
				echo "New Icon File added Sucessfully"
				sleep 2
				else			
				echo "Updating Icon File"
				sleep 2
				chown pi /home/pi/Downloads/
				rm -f /home/pi/Downloads/testicon.gif
				cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/testicon.gif /home/pi/Downloads/testicon.gif
				echo "Icon File Updated Sucessfully"
				sleep 2
				fi
				if [ ! -f  /home/pi/Desktop/TEST ]
				then
				echo "Adding New Desktop Shortcut"
				sleep 2
				chown pi /home/pi/Desktop/
				cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/TEST /home/pi/Desktop/TEST
				echo "New Desktop Shortcut added Sucessfully"
				sleep 2
				else
				echo "Updating Desktop Shortcut"
				sleep 2
				chown pi /home/pi/Desktop/
				rm -f /home/pi/Desktop/Test
				cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/TEST /home/pi/Desktop/TEST
				echo "Desktop Shortcut Updated Sucessfully"
				sleep 2
				fi;;
        [Nn]* ) echo "Test Software Not Updated"
				sleep 2;;
        * ) echo "Your Answer was assumed NO Test Software not updated"
			sleep 2;;
    esac
fi
read -n1 -r -p "Press space to continue..." key
if [ "$key" = '' ]; then
clear
    read -p "Do you wish to Restart the Tester?" yn
    case $yn in
        [Yy]* ) sudo shutdown -r now;;
        [Nn]* ) echo "Rememeber to Restart your Tester manually for changes to take effect"
				echo "Updater Finished"
				sleep 2
				exit;;
        * ) echo "Your Answer was assumed NO, Retart Cancelled"
			echo "Rememeber to Restart your Tester manually for changes to take effect"
			echo "Updater Finished"
			sleep 2
			exit;;
    esac
fi
