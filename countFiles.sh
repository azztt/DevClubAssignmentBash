#!/bin/sh

if [ $# -eq 0 ]; then
	echo "Too few arguments! Path of Directory not specified"
	echo "USE: ./countFiles.sh path_of_directory [Extension]"
	exit -1
elif [ $# -eq 1 ]; then
	PATHD=$1
	EXT=".*"
elif [ $# -eq 2 ]; then
	PATHD=$1
	EXT=$2
elif [ "$#" -gt 2 ]; then
	echo "Too many arguments!"
	echo "USE: ./countFiles.sh path_of_directory [Extension]"
	exit -1
fi

path="$PATHD/*$EXT"
ls $path | wc -l 
exit 0
	


