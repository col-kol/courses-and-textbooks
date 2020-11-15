#!/usr/bin/env bash

# As we covered in lecture find’s -exec can be very powerful for performing 
# operations over the files we are searching for. However, what if we want 
# to do something with all the files, like creating a zip file? 

# As you have seen so far commands will take input from both arguments and STDIN. 
# When piping commands, we are connecting STDOUT to STDIN, but some commands 
# like tar take inputs from arguments. 

# To bridge this disconnect there’s the xargs command which will execute a 
# command using STDIN as arguments. For example ls | xargs rm will delete the 
# files in the current directory.

# Your task is to write a command that recursively finds all HTML files in the 
# folder and makes a zip with them. Note that your command should work even if 
# the files have spaces (hint: check -d flag for xargs "or -0 for MacOS")

# zips html files in current and all subdirectories

# @ - Take the list of input files from standard input. 
#	  Only one filename per line.

find . -name "*.html" | zip zipped-files -@






