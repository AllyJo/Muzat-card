### Music ReFilerizer

A quick Ruby based script to split a large mp3 file set into n folders.

Contributors:

  - AllyJo
  - BootCoder


Allows user to navigate through music collection on sd card with miminal transition time

Starting scenario
n number of mp3 files with no folder structure in one directory

Ending scenario
one directory filled with sub directories each containing n number of original files
directory will no longer have original files but all will have been transferred to subdirectories

Steps
Open directory
Get list of all files
Get amount of all files
Display amount of files to user
Prompt user for number of files per sub directory
Iterate over all files
For every n files, create new directory
Move said n files into new directory
