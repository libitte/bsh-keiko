#!/bin/sh
set -e

if id | grep "^uid=0(" > /dev/null 2>&1
then
	echo "Is superuser"
else
	echo "Is NOT superuser"
fi

exit 1;
