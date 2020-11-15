#!/usr/bin/env bash

# Write bash functions marco and polo that do the following. 
# Whenever you execute marco the current working directory 
# should be saved in some manner, then when you execute polo, 
# no matter what directory you are in, polo should cd you back 
# to the directory where you executed marco. For ease of d
# ebugging you can write the code in a file marco.sh and 
# (re)load the definitions to your shell by executing 
# source marco.sh.

# -----------------------------------------------------------

# marco writes current working directory into /tmp/marco
# and will overwrite previous marcos

marco () {
	cwd=$(pwd)

	touch /tmp/marco
	# clear previous marco
	rm /tmp/marco

	touch /tmp/marco

	echo "$cwd" > /tmp/marco
}
