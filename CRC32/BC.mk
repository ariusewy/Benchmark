CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -fno-slp-vectorize -fno-vectorize -lm
FILE = crc_32.c 
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

crc.bc: $(SOURCES_O) Makefile
	${LD} $(SOURCES_O) -o crc.bc 
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
