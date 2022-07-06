CC=clang
LD=llvm-link
CFLAGS = -static -c -emit-llvm -w -O3 -fno-slp-vectorize -fno-vectorize -lm
FILE = dijkstra_large.c
SOURCES_O=${FILE:.c=.o}
SOURCES_BBC=$(wildcard *.bc)

dijkstra.bc: $(SOURCES_O) Makefile
	${LD} $(SOURCES_O) -o dijkstra.bc
$(SOURCES_O): dijkstra_large.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o
cleanall:
	rm -rf *.bc *.o
