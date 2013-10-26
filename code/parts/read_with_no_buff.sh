#!/bin/sh
#set -e

echo "Would you like to ...[y/n]?  \c"
stty raw
ANSWER=`dd bs=1 count=1 2> /dev/null`
stty -raw
echo ""
case "$ANSWER" in
	[yY] ) FLAG=TRUE  ;;
	*    ) FLAG=FALSE ;;
esac

if test $FLAG = TRUE
then
	echo "GO"
else
	echo "cancel"
fi
