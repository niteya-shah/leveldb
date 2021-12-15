module load gcc
export LIBRARY_PATH=/beegfs/projects/synergy_lab/umap/apps/umap/build/lib:$LIBRARY_PATH
export CPATH=/projects/synergy_lab/umap/apps/umap/build/include/umap:/projects/synergy_lab/umap/apps/umap/build/include:$CPATH
export UMAP_INCL=$(realpath /projects/synergy_lab/umap/apps/umap/build/include/umap/)
export UMAP_LIB=/projects/synergy_lab/umap/apps/umap/build/lib/libumap.so
cmake='/beegfs/projects/synergy_lab/umap/apps/cmake-3.21.2-linux-x86_64/bin/cmake'
$cmake -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc -DCMAKE_BUILD_TYPE=Release .. && $cmake --build . --config Release -- -j 32
