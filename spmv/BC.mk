CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -g -fno-slp-vectorize -fno-vectorize -lm
FILE = spmv_main.c
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

spmv.bc: $(SOURCES_O) 
	${LD} $(SOURCES_O) -o spmv.bc
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
