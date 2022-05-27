fileName=$1

if [ -z "$fileName" ]
then
	make
else
	make out=$fileName
fi
