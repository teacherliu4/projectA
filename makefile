./lib/add.o:./src/add.c ./include
	gcc -c ./src/add.c -o ./lib/add.o -I./include
./lib/sub.o:./src/sub.c ./include
	gcc -c ./src/sub.c -o ./lib/sub.o -I./include
./lib/libcal.a:./lib/add.o ./lib/sub.o
	ar rcs ./lib/libcal.a ./lib/add.o ./lib/sub.o
main:main.c ./lib/libcal.a
	gcc -o main main.c -Llib -lcal -Iinclude
clean:
	rm ./lib/*.o
	rm main
