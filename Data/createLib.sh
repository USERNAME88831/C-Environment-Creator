#!/bin/sh

createLib() {
	lib=$1
	srcLib=$2
	headerLib=$3
	if [ -z $lib ];
	then
		echo "ERR: No library name was given"
		return
	fi

	echo "STARTED: Creating $headerLib"
	cd "includeFiles"
	touch "$headerLib"
	printf "#pragma once" >> $headerLib
	cd ..
	echo "FINISHED: Creating $headerLib"
	echo "STARTED: Creating $srcLib"
	cd "src"
	touch $srcLib
	printf "#include <stdio.h>\n#include \"../includeFiles/$headerLib\"" >> $srcLib
	echo "FINISHED: Creating $srcLib"
	echo "All done!"
	cd ..

	headerFile=$(readlink -f "includeFiles/$headerLib")
	srcFile=$(readlink -f "src/$srcLib")

	echo "\n"
	echo "header file: $headerFile"
	echo "source file: $srcFile"
}

LibName="$1"
LibSrc="$LibName.c"
LibHeader="$LibName.h"

createLib $LibName $LibSrc $LibHeader
