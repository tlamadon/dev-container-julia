#!/bin/bash

mkdir -p .renv-cache

# rsync -rlFptgoa --stats .depot-cache/* /opt/julia --modify-window=1
# julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); Pkg.precompile()'
# rsync -rlFptgoa --stats /opt/julia/* .depot-cache --modify-window=1 --delete
