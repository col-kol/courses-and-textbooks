#!/usr/bin/env bash

# Say you have a command that fails rarely. In order to debug it you need to 
# capture its output but it can be time consuming to get a failure run. 

# Write a bash script that runs the following script until it fails and captures 
# its standard output and error streams to files and prints everything at the end. 

# Bonus points if you can also report how many runs it took for the script to fail.

touch rarely-fails-output.txt
rm rarely-fails-output.txt

runs_until_fail=1
while true
do 
	output=$(./script-that-rarely-fails.sh 2>&1)

	if [[ "$output" == "Everything went according to plan" ]]; then	
	 	echo $output >> rarely-fails-output.txt
	else
		echo $output >> rarely-fails-output.txt
	 	cat rarely-fails-output.txt
	 	echo "Runs until failure: $runs_until_fail"
	 	exit 1
	fi
	((runs_until_fail++))

done





