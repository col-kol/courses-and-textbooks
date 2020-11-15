#!/bin/bash

# the columns in the FBI crime data's table have "group<col>" in each <td>'s class

# group 1 : Population
# group 16: Burglary 

#echo "curl -s https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-1" 

population=$(curl -s https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-1 | grep 'td' | grep -A 1 ".*group1\s" | grep "[0-9].*</td>" | tr -d "</td>" | tr -d ",") 


burglary=$(curl -s https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-1 | grep 'td' | grep -A 1 ".*group16" | grep "[0-9].*</td>" | tr -d "</td>" | tr -d ",") 

n=$(curl -s https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-1 | grep 'td' | grep -A 1 ".*group1\s" | grep "[0-9].*</td>" | wc -l)
 

find_min_max() {
    min=$(echo "$@" | sort | head -n1)
    max=$(echo "$@" | sort -r | head -n1)
    echo "Min: $min --  Max: $max"
}

#echo -e "\nPopulation"
#find_min_max "$population"

#echo -e "\nBurglary"
#find_min_max "$burglary"

# 1st arg: size of arrays, 2nd: first array, 3rd: second array
sum_of_diffs() {
    for i in {1..$1}; do 
        echo "{$2[$i]}" "{$3[$i]}" 
    done 
}

sum_of_diffs "$n" "$population" "$burglary"
