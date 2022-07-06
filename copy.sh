#!/usr/bin/env bash

SRCDIRS="bitcount
         susan  
         rijndael 
         sha
         fft
         stringsearch
         dijkstra"


CURRDIR=$(pwd)
BRANCH=/llvm-root/ibm-pisa/branch-analysis
PISAOUT=/llvm-root/ibm-pisa/example-compile-profile/compile/app/pisaout

# compiler
export CC=clang
export LD=llvm-link
# user large or small tests
export MIBENCH_FAST=true

# whether we want tracing
export MIBENCH_TRACE=false

# path passed to run scripts in directories
#export MIBENCH_RUN="$CURRDIR/$RUNIT"
# export PISAFileName=pisaoutLarge
for d in ${SRCDIRS}
do
    echo ${d}
    cd ${d}
    cp pisaoutLarge ${PISAOUT}
    cd ${PISAOUT}
    mv pisaoutLarge ${d}_large_pisa.json
    cd ${CURRDIR}
done
