CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -fno-slp-vectorize -fno-vectorize -lm
FILE = susan.c 
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

susan.bc: $(SOURCES_O) Makefile
	${LD} $(SOURCES_O) -o susan.bc 
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
