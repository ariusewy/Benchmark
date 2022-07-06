#!/usr/bin/env bash

make clean
make

if [ "$MIBENCH_FAST" = true ] ; then
    # small run
    ./main.pisaCoupled.nls 4 4096 > output_small.txt
    #${MIBENCH_RUN} fft 4 8192 -i > output_small.inv.txt
else
    # large run
    ./main.pisaCoupled.nls 8 32768 > output_large.txt
    #${MIBENCH_RUN} fft 8 32768 -i > output_large.inv.txt
fi
