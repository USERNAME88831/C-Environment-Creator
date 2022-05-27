# if you are too lazy to write something like make out="test.exe"
# use ./cBin.sh test.exe
fileName=$1

if [ -z "$fileName" ]
then
	make
else
	make out=$fileName
fi
