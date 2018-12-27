#!/bin/sh

ans=0
PATHD=$1

if [ $# -eq 0 ]; then
	echo "Too few arguments! file missing"
	echo "USE: ./eval.sh file"
	exit 1
elif [ $# -gt 1 ]; then
	echo "Too many arguments!"
	echo "USE: ./eval.sh file"
fi

if [ -f "$PATHD" ]; then
	while read -r line
	do
		index=0
		n1=$(echo "$line" | grep -Eo '[[:alpha:]]+|[0-9]+')
		op=$(echo "$line" | grep -Eo '[+,/,*,-]')
		case $op in
			"+" ) ans=$((ans + n1))
				;;
			"/" ) ans=$((ans / n1))
				;;
			"*" ) ans=$((ans * n1))
				;;
			"-" ) ans=$((ans - n1))
				;;
		esac
	done < "$PATHD"
	echo $ans
	exit 0
else
	echo "File not found!"
	exit 1
fi
