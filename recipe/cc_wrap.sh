#!/bin/sh

args="${@##-Werror*}"
sccache /home/ubuntu/miniforge3/envs/udf/bin/x86_64-conda-linux-gnu-cc $args
# sccache $NN_CC_ORIG $args
