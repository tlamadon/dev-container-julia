#!/bin/bash

mkdir -p .depot-cache/artifacts
mkdir -p .depot-cache/packages
mkdir -p .depot-cache/compiled

cp -rn .depot-cache/artifacts/** /opt/julia/artifacts/ 
cp -rn .depot-cache/packages/** /opt/julia/packages/ 
cp -rn .depot-cache/compiled/** /opt/julia/compiled/ 

julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); Pkg.precompile()'

cp -rn /opt/julia/artifacts/** .depot-cache/artifacts/
cp -rn /opt/julia/packages/** .depot-cache/packages/
cp -rn /opt/julia/compiled/** .depot-cache/compiled/
