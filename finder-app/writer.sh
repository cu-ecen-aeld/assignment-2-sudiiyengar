#!/bin/bash



set -e
set -u

writefile=sudiiyengar.txt
writestr=sudi

    if [ $# -eq 2 ] 
    then

	writefile=$1
	writestr=$2

	if [ -e "$writefile" ]
	then	
    	    echo "$writefile" >  "$writestr"
    	else
		if [ -d "$(dirname $writefile)" ]
    	    then
		echo "$writestr" >> "$writefile"
	    else
		mkdir -p "$(dirname $writefile)" && touch "$writefile"		
	        echo "$writestr" >> "$writefile"
	    fi
	fi
    else
	echo "Error" $? "example: ./wrtier.sh <path_to_dir> <write_string>"
	exit 1
     fi
