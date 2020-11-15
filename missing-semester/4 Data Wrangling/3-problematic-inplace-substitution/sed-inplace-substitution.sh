#!/bin/bash

# To do in-place substitution it is quite tempting to do something like
# sed s/REGEX/SUBSTITUTION/ input.txt > input.txt. However this is a
# bad idea, why? Is this particular to sed? Use man sed to find out how
# to accomplish this.

# in file.txt replace 'cat' with 'dog'.
# sed 's/REGEX/SUBSTITUTION/ input.txt > input.txt will result in a
# blank file

# this is problematic as there does not seem to be a sed solution
# that works both on MacOS and Linux  

# This script with change all 'cat's to 'dog's in file.txt

sed -i '.copy' 's/cat/dog/' file.txt  
rm file.txt.copy
