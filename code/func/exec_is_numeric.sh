#!/bin/sh
set -e

. IsNumeric.sh

NUMBER=-1
if IsNumeric $NUMBER
then
	echo "$NUMBER is numeric."
fi


# result:
#
# -1 is numeric.
#
