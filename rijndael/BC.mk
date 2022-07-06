CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -fno-slp-vectorize -fno-vectorize -lm
FILE = aes.c aesxam.c
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

rijndael.bc: $(SOURCES_O) Makefile
	${LD} $(SOURCES_O) -o rijndael.bc 
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
