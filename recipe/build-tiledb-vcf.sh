#!/bin/sh

set -exo pipefail

cd TileDB-VCF/

mkdir libtiledbvcf-build && cd libtiledbvcf-build

export NN_CXX_ORIG=$CXX
export NN_CC_ORIG=$CC
export CXX=$RECIPE_DIR/cxx_wrap.sh
export CC=$RECIPE_DIR/cc_wrap.sh

cmake \
  -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
  -DOVERRIDE_INSTALL_PREFIX=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DFORCE_EXTERNAL_HTSLIB=OFF \
  ../libtiledbvcf

make VERBOSE=1 -j ${CPU_COUNT}

make install-libtiledbvcf

# Cleanup
cd ../ && rm -r libtiledbvcf-build
