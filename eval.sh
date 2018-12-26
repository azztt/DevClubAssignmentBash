#!/bash/sh

ans=0
FL=$1

if [ -f $FL ]; then
	while read -r line
	do
		echo $line
	done < $FL
else
	echo "File not found!"
	exit 1
fi
