#!/bin/bash

# Say you don’t want to start a process until another completes, 
# how you would go about it? In this exercise our limiting process
# will always be sleep 60 &. One way to achieve this is to use 
# the wait command. Try launching the sleep command and having an 
# ls wait until the background process finishes.

# However, this strategy will fail if we start in a different bash 
# session, since wait only works for child processes. One feature 
# we did not discuss in the notes is that the kill command’s exit 
# status will be zero on success and nonzero otherwise. kill -0 
# does not send a signal but will give a nonzero exit status if 
# the process does not exist. Write a bash function called pidwait 
# that takes a pid and waits until said process completes. 
# You should use sleep to avoid wasting CPU unnecessarily.


# pidwait function has 1 input arg: a process id or pid

pidwait() {
    pid="$1"    
    echo "pid: "$pid
    out=$(kill -0 $pid 2>&1 | wc -m) 
    echo $out

    # if $out is 0, then there exist a pid running
    # o.w. there is not process with pid	 

    while [ $out -eq 0 ]; do
        echo "waiting"
	
        out=$(kill -0 $pid 2>&1 | wc -m) 
    done
    echo "finished"

}
