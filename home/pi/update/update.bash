#!/bin/bash
#AR81 Updater Program, Written by Silverfox0786
#Version 1.6, 26/12/2016

echo "PREPAIRING UPDATE, PLEASE WAIT..."
sleep 2
sudo apt-get update
clear
echo "PREPAIRING UPDATE, PLEASE WAIT..."
sleep 2
if [ ! -f  /tmp/master.tar.gz ]
then
wget https://github.com/silverfox0786/Arcade-Tester-AR81/archive/master.tar.gz -P /tmp
tar -zxvf /tmp/master.tar.gz -C /tmp
else
tar -zxvf /tmp/master.tar.gz -C /tmp
fi
if [ ! -d  /home/pi/update/ ]
then
mkdir /home/pi/update
fi
clear
echo "PREPAIRING UPDATE, PLEASE WAIT..."
sleep 2
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/update.png /home/pi/Downloads/update.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/UPDATE /home/pi/Desktop/UPDATE
cp /tmp/Arcade-Tester-AR81-master/home/pi/update/testupdate.bash /home/pi/update/testupdate.bash
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/git.png /home/pi/Downloads/git.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/GIT /home/pi/Desktop/GIT
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/manual.png /home/pi/Downloads/manual.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/MANUAL /home/pi/Desktop/MANUAL
clear
echo "READY TO UPDATE, MOVING ON..."
sleep 2
lxterminal -e /home/pi/update/testupdate.bash
cp /tmp/Arcade-Tester-AR81-master/home/pi/update/update.bash /home/pi/update/update.bash
exit 0
