#!/bin/bash

for f in "$@"; do
	while read line; do
		if [[ "$line" == \#include* ]]; then
			read cmd arg <<< "$line"
			echo "$line"
			cat "$arg"
			echo
		else
			echo "$line"
		fi
	done < "$f"
done
