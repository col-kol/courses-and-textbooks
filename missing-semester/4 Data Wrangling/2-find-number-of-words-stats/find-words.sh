#!/bin/bash

# tr - converts all chars to lower
# rev - reverses each string on each line
# cut - selects first two chars

file="/usr/share/dict/words"

two_letter_combos=$(cat $file | grep ".*a.*a.*a.*[^'s]$" | tr "[A-Z]" "[a-z]" | rev | cut -c 1,2 | rev)

top_three=$(echo "$two_letter_combos" | sort | uniq -c | sort -r | head -n3) 


echo "$top_three" | awk '{print $2,"occurs",$1,"times"}' 




