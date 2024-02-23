#!/bin/bash

args="${@##-Werror*}"

echo "CMD"
echo $args

$NN_CXX_ORIG $args
