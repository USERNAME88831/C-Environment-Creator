#!/bin/bash


createEnv() {
	envName=$1
	if [ ! -f Location.txt ];
	then
		touch Location.txt
		printf $HOME >> Location.txt
	fi

	location=$(head -n 1 Location.txt)

	cp -r Data $location/$envName
	echo "The C environment was created at $location/$envName. Happy C coding!"
}


if [ $# -eq 0 ]; then
	echo "no name for the environment was given, exiting"
	exit 1
else
	createEnv $1
fi
