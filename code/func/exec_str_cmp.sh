#!/bin/sh
set -e

. StrCmp.sh

STR1=1234
STR2=23

case `StrCmp "$STR1" "$STR2"` in
	-1 ) echo "$STR1 is less than $STR2"      ;;
	0 )  echo "$STR1" is equal to "$STR2"     ;;
	1 )  echo "$STR1" is greater than "$STR2" ;;
	* )  echo "StrCmp is failed"              ;;
esac


# RESULT
#
# 1234 is less than 23
#
