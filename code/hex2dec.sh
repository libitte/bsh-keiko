#!/bin/sh
set -e

hex2decimal() {
	NUM=`echo $1 | tr '[a-f]' '[A-F]'`
	echo 16i $NUM p | dc
}

for i in $*
do
	echo "$i is `hex2decimal $i`."
done
