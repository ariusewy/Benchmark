CC=riscv64-unknown-elf-gcc
crc: crc_32.c Makefile
	$(CC) -static crc_32.c -O3 -o crc 

clean:
	rm -rf crc output*
