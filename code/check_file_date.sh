#!/bin/sh
set -e

#DATE=`date +%m%d%H%M`
DATE=`date +%Y%m%d%H%M`
echo $DATE

touch "${DATE}" /tmp/tmp.$$
if [ -n "`find code/file -newer /tmp/tmp.$$ -print`" ]; then
	echo "Yes: code/file is newer than ${DATE}"
else
	echo "No: code/file is not newer than ${DATE}"
fi

#-------------
#201310262315
#No: code/file is not newer than 201310262315

