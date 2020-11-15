#!/bin/bash

# Find your average, median, and max system boot time over the last ten boots. 
# Use journalctl on Linux and log show on macOS, and look for log timestamps 
# near the beginning and end of each boot. On Linux, they may look something like:

#    Logs begin at ...

# and

#    systemd[577]: Startup finished in ...

# On macOS, look for:

#    === system boot:

# and

#    Previous shutdown cause: 5


# for Linux use 'journalctl' instead of 'log show' which is for MacOS

# Some of these boot messages got erased, so you can't just grep them bc there might
# not be any or enough to get statistics about boot times, so I just put 3 boots in 
# a file called reboots.log


# to get boot messages
#log show | grep -E "=== system boot:|Previous shutdown cause: 5" > reboots.log


boot_times=$(cat reboots.log | awk '{print $2}' | sed 's/-.*$/ /' | sed 's/^.*:/ /' | xargs -n2 | awk '{print $2"-"$1}' | bc | sort)

# find the max
max=$(echo "$boot_times" | sort -r | head -n1)
max=$(echo "$max""+0.0" | bc)
echo "max boot time : "$max 


# find the average
mean=$(echo $boot_times | awk '{ total += $2; count++ } END { print total/count }')
echo "avg boot time : "$mean


n=$(echo "$boot_times" | wc -w)
echo $n

is_odd=$(echo $n"%2" | bc)
# find the median






