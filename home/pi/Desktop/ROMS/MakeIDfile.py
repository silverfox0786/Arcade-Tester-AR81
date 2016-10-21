import os
import zlib


directory='/home/pi/mame/roms/'
file_paths = []  # List which will store all of the full filepaths.

    # Walk the tree.
for root, directories, files in os.walk(directory):
    for filename in files:
        # Join the two strings in order to form the full filepath.
        filepath = os.path.join(root, filename)
        file_paths.append(filepath)  # Add it to the list.


count=0
l=len(file_paths) # number of files in total
print l

while count<l:
    testfile=file_paths[count]
    if count<l:
    #if testfile.endswith(".BIN")or testfile.endswith(".bin"):

        #got valid rom with .BIN
        #print file_paths[count],
        fname=file_paths[count]
        if ((fname[len(fname)-3:len(fname)]!="CFG")and(fname[len(fname)-3:len(fname)]!="DOC")and (fname[len(fname)-3:len(fname)]!="TXT") ):
           
            #print fname
            gameStart=19
            temp=gameStart+1
            #print fname[temp]
            while fname[temp]!='/':
                temp=temp+1
            game=fname[gameStart:temp]
            temp=temp+1
            deviceStart=temp
            #while fname[temp]!='/':
            #    temp=temp+1
            Device=fname[deviceStart:len(fname)]
        
            prev=0
            for x in open(fname,"rb"):
                prev=zlib.crc32(x,prev)
            crc="%X"%(prev & 0xFFFFFFFF)

            crcfile=open('/home/pi/Desktop/ROMS/ID.crc',"a")
            crcfile.write(crc+game+' - '+Device+'\n')
            crcfile.close()
            print game,crc,Device
        
                
        count=count+1

        print"ID.crc file created!"
