#!/bin/bash
set -x
src=$1
img=${src%.*}

./concat.sh $src > scratch/$img.def && \
	(sudo rm -rf scratch/$img; \
	mkdir scratch/$img && \
	sudo singularity bootstrap scratch/$img scratch/$img.def)

#sudo chown -R vbrik:vbrik scratch/$img
#sudo chmod -R u+rw scratch/$img
