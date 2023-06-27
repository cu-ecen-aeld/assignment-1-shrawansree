#!/bin/bash

if [ -z "$1" ]; then
	echo "Argument 1  not supplied"
	exit 1
elif [ -z "$2" ];then
	echo "Argument 2  not supplied"
	exit 1
else
	echo "$2" > "$1"
	exit 0
fi


