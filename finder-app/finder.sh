#!/bin/bash

filesdir=$1
searchstr=$2


    if [ $# -lt 2 ]  
    then
    	echo "Error" $? "example: ./fnder.sh <path_to_dir> <search_string>"	
    else 
	    if [ -e "$filesdir" ] 
    	    then 
	         Y=$( grep -rc "$searchstr" "$filesdir" | wc -l )
	      	 
		 X=$( ls "$filesdir" | wc -l )

    	   	 echo "The number of files are $X and the number of matching lines are $Y"

	    else

	    	echo "Error $? filesdir does not represent on the filesystem"
	    fi

    fi
