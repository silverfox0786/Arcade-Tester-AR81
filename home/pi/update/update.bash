#!/bin/bash
#AR81 Updater Program, Written by Silverfox0786
#Version 1.5, 26/10/2016

if [ ! -f  /tmp/master.tar.gz ]
then
wget https://github.com/silverfox0786/Arcade-Tester-AR81/archive/master.tar.gz -P /tmp
tar -zxvf /tmp/master.tar.gz -C /tmp
else
tar -zxvf /tmp/master.tar.gz -C /tmp
fi
sudo apt-get update
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/update.png /home/pi/Downloads/update.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/UPDATE /home/pi/Desktop/UPDATE
cp /tmp/Arcade-Tester-AR81-master/home/pi/update/piupdate.bash /home/pi/update/piupdate.bash
cp /tmp/Arcade-Tester-AR81-master/home/pi/update/testupdate.bash /home/pi/update/testupdate.bash
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/git.png /home/pi/Downloads/git.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/GIT /home/pi/Desktop/GIT
cp /tmp/Arcade-Tester-AR81-master/home/pi/Downloads/manual.png /home/pi/Downloads/manual.png
cp /tmp/Arcade-Tester-AR81-master/home/pi/Desktop/MANUAL /home/pi/Desktop/MANUAL
lxterminal -e /home/pi/update/piupdate.bash
cp /tmp/Arcade-Tester-AR81-master/home/pi/update/update.bash /home/pi/update/update.bash
exit 0
