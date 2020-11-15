#!/bin/bash

# From what we have seen, we can use some ps aux | grep commands 
# to get our jobs’ pids and then kill them, but there are better 
# ways to do it. Start a sleep 10000 job in a terminal, background 
# it with Ctrl-Z and continue its execution with bg. Now use pgrep
# to find its pid and pkill to kill it without ever typing the pid 
# itself. (Hint: use the -af flags).


# start the process
sleep 10000

# Ctrl-Z to kill or use kill -STOP pid 
pgrep -af "sleep 10000" | xargs kill -STOP 

# revive it in background with bg
bg

# find and kill process with its PID
pgrep -af "sleep 10000" | xargs pkill -g
