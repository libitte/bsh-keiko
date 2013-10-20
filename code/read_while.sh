#!/bin/sh
set -e

while read LINE
do
	echo "-> ${LINE}"
done < file
