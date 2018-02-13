#!/bin/bash
set -x
src=$1
size=${2:-500}
img=${src%.*}
dst=${3:-scratch}

./concat.sh $src > scratch/$img.def && \
	singularity create --force -s $size $dst/$img.img \
	&& sudo singularity bootstrap $dst/$img.img scratch/$img.def
