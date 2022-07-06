CC=riscv64-unknown-elf-gcc
FILE = dhrystone.c dhrystone_main.c 
CFLAGS = -static -O3 -g

dhrystone: ${OBJ} Makefile
	${CC} ${CFLAGS} ${FILE} -o dhrystone -lm

clean:
	rm -rf *.o fft output*
