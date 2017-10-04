#!/bin/bash
src=$1
size=${2:-500}
img=${src%.*}

set -x
./concat.sh $src > scratch/$img.def && \
	(sudo rm -rf scratch/$img; \
	mkdir scratch/$img && \
	sudo singularity bootstrap scratch/$img scratch/$img.def)

#sudo chown -R vbrik:vbrik scratch/$img
#sudo chmod -R u+rw scratch/$img
