#!/bin/sh

args="${@##-Werror*}"
sccache /home/ubuntu/miniforge3/envs/udf/bin/x86_64-conda-linux-gnu-c++ $args
# sccache $NN_CXX_ORIG $args
