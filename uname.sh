#!/bin/sh

file=$1
uname=$2
IFS=":"

if [ $# -eq 0 ]; then
	echo "Too few arguments! username, file missing"
	echo "USE: ./uname.sh username file"
	exit 1
elif [ $# -eq 1 ]; then
	echo "Too few arguments! username missing"
	echo "USE: ./uname.sh username file"
	exit 1
fi

if [ -f "$file" ]; then
	while read line
	do
		index=0
		for w in $line
		do
			if [ $((index % 7)) -eq 0 ]; then
				index1=0
				if [ $w = $uname ]; then
					for w1 in $line
					do
						if [ $index1 -eq 4 ]; then
							echo $w1
						fi
						index1=$((index1 + 1))
					done
				fi
			fi
			index=$((index + 1))
		done
	done < $file
	exit 0
else
	echo "File not found!"
	exit 1
fi
