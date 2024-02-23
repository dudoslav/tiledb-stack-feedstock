#!/bin/bash

args="${@##-Werror*}"

echo "CMD"
echo $args

$NN_CC_ORIG $args
