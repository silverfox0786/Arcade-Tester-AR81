"# Arcade-Tester-AR81" 

www.arcadetester.co.uk

If you wish to contribute to the Git please contact support@arcadetester.co.uk

The available resources will be laid out the same as on the Tester you can follow the back up procedure in the Manual to get any file addition or add any files from the git.

The layout is bellow

The test files and user data are stored within folders located on the Desktop. Below is a list detailing the files contained.

    /home/pi/Desktop/Devices - All data for the ADT is stored here
    /home/pi/Desktop/ROMS - ID.crc file, all .BIN files and .TXT files
    /home/pi/Desktop/Test Progs - All Test Sequences Generated
	

Resource Files Last Updated: 11/10/2016

The Main Pi Tester Software is also included in this Git. 

It consists of the Tester Software, A Desktop shortcut and a Icon File.

The Layout of this software is as follows

    /home/pi/Test - Main Pi Tester software files
    /home/pi/Desktop - Test.desktop - Shortcut file
    /home/pi/Downloads - testicon.gif - Icon for desktop shortcut file
	
When these 3 folder files are added correctly your tester should display the current version upon startup. 
The Desktop Shortcut and Icon sould not change where the TEST folder will every time an update is available.
	
Current Pi Software Version is v1.30 16/10/2016

TEST SOFTWARE NEW UPDATER HOW TO:

After Finding a few people struggle with updatinbg the main Pi Test Software, it was decided that a updater be made available for all the users of this Tester.
Because this was not made before inital shipping anyone with a Tester Shipped before 23/10/2016 will not have the updater softare on their tester. 
For this reason a few small things will need to be performed which will not only be a one off task but from ther eon in the updater will update itself as well as update the test software.

First thing you will need to do is download update.bash from the Git which is located on the git in teh same place as it will need to be located on your Pi.

	/home/pi/update/update.bash
	
make sure you place this file on your pi in the same place, and then Right Click the file and select Properties. from there select the dropdown option of execute to make it "anyone"
Once you have done this you can then Double Click the update file and when prompted click open in Terminal.

And then just follow the prompts, the first thing will happen is all relevent update files will be updated and also the updater itself, then a NEW termina will open with teh actual updater.
you will then need to slowly and carefully read and follow the update prompts to update the parts you wish to update. 

Enjoy your Tester guys, and i hope it helps you repair many equiptment. 

Last Update on 24/10/2016