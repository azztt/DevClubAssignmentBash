#!bin/bash

PATH=
EXT=

if [ $# -eq $((0)) ]; then
	echo "Path of Directory not specified"
	exit 1
elif [ $# -eq $((1)) ]; then
	PATH = $1
	EXT = ".*"
elif [ $# -eq $((2)) ]; then
	PATH = $1
	EXT = "$2"
elif [ $# -gt $((2)) ]; then
	echo "More than expected arguments"
	exit 2
fi

cd PATH
ls -l * + EXT | wc -l
exit 0
	


