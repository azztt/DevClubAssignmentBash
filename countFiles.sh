#!/bin/sh

if [ "$#" -eq "0" ]; then
	echo "Path of Directory not specified"
	exit -1
elif [ "$#" -eq "1" ]; then
	PATHD=$1
	EXT=".*"
elif [ "$#" -eq "2" ]; then
	PATHD=$1
	EXT=$2
elif [ "$#" -gt "2" ]; then
	echo "More than expected arguments"
	exit -1
fi

path="$PATHD/*$EXT"
ls $path | wc -l
#echo `ls "$path" | wc -l`
#count=$`ls $path | wc -l`
#echo $count
 
exit 0
	


