#!/usr/bin/env bash

make clean
make

if [ "$MIBENCH_FAST" = true ] ; then
    ./runme_small.sh

else
    ./runme_large.sh
fi
