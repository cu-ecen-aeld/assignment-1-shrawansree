#!/bin/bash

filesdir="$1"
searchstr="$2"

if [ -z "$filesdir" ]; then
	echo "Argument 1 not supplied"
	exit 1
elif [ -z "$searchstr" ]; then
	echo "Argument 2 not supplied"
	exit 1
elif [ ! -d "$filesdir" ]; then
	echo "Argument 1 ($filesdir) does not represent a directory on the filesystem"
	exit 1
else
	x=$(find "$filesdir" -type f | wc -l)
	y=$(grep -r -o "$searchstr" "$filesdir" | wc -l)
	echo "The number of files are $x and the number of matching lines are $y"
	exit 0
fi
