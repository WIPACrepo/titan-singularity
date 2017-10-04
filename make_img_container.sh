#!/bin/bash
set -x
src=$1
size=${2:-500}
img=${src%.*}

./concat.sh $src > scratch/$img.def && \
	singularity create --force -s $size scratch/$img.img \
	&& sudo singularity bootstrap scratch/$img.img scratch/$img.def
