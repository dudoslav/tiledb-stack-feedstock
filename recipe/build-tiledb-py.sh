#!/bin/bash

set -e
set -x

source $RECIPE_DIR/enable-caching.sh

export TILEDB_CONDA_BUILD=1

cd TileDB-Py/
$PYTHON setup.py install --tiledb="$PREFIX" --single-version-externally-managed --record record.txt
