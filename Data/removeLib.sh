#!/bin/sh

removeLib() {
	lib=$1
	srcLib=$2
	headerLib=$3
	if [ -z "$lib" ];
	then
		echo "ERR: No library name was given"
		return
	fi

	echo "STARTED: Removing $headerLib"
	cd "includeFiles"
	rm $headerLib
	cd ..
	echo "FINISHED: Removing $headerLib"
	echo "STARTED: Removing $srcLib"
	cd "src"
	rm $srcLib
	cd ..
	echo "FINISHED: Removing $srcLib"
	echo "All done!"
}

LibName="$1"
LibSrc="$LibName.c"
LibHeader="$LibName.h"

removeLib $LibName $LibSrc $LibHeader
