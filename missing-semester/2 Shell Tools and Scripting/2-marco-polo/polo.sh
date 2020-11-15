#!/usr/bin/env bash

# - marco writes current working directory into /tmp/marco
# and will overwrite previous marcos 
# - polo changed to the directory in /tmp/marco assuming marco exists

polo () {
	newdir=$(cat /tmp/marco)
	cd "$newdir"
}