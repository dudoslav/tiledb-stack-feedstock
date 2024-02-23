set -x
set -o xtrace

source $RECIPE_DIR/enable-caching.sh

cd TileDB-R/

## Build a tarball and install from the tarball is the officially blessed way
## It has also respects the .Rbuildignore file allowing us to fine-tune
$R CMD build --no-manual --no-build-vignettes .
$R CMD INSTALL --configure-args=--with-tiledb=${CONDA_PREFIX} --install-tests --build tiledb_*.tar.gz ${R_ARGS}
