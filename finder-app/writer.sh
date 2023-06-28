#!/bin/bash

if [ -z "$1" ]; then
	echo "Argument 1  not supplied"
	exit 1
elif [ -z "$2" ];then
	echo "Argument 2  not supplied"
	exit 1
else
	if [ ! -e "$1" ]; then
		dir=$(dirname "$1")
		mkdir -p "$dir"
	fi
	echo "$2" > "$1"
	exit 0
fi


