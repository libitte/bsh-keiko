#!/bin/sh
set -e

OLDDIFS=$IFS
IFS=:
while read USER PASSWD UID GID GCOS REMAINDER
do
	echo "$USER $GCOS"
done < /etc/passwd
IFS=$OLDDIFS

