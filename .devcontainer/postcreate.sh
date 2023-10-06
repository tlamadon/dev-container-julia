#!/bin/bash

mkdir -p .depot-cache

rsync -a .depot-cache/* /opt/julia
julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); Pkg.precompile()'
rsync -a /opt/julia/* .depot-cache