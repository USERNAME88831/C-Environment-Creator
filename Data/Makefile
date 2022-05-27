CC = gcc
x = mainFile.exe

run:
	@echo "starting to make file..."
	@if [ "$(out)" != "" ]; then\
		${CC} -o $(out) main.c src/*.c;\
		echo files "compiled to $(out)";\
	else\
		${CC} -o ${x} main.c src/*.c;\
		echo "files compiled to ${x}";\
	fi
