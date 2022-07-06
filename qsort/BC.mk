CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -fno-slp-vectorize -fno-vectorize -lm
FILE = qsort_large.c
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

qaort.bc: $(SOURCES_O) Makefile
	${LD} $(SOURCES_O) -o qsort.bc
$(SOURCES_O): qsort_large.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
