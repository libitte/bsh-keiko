#!/bin/sh
set -e

#
# File: StrCmp.sh
#

StrCmp() {
	#
	# Name
	# 	StrCmp - 2津の文字列を比較する
	#
	# Format
	# 	SrtCmp string1 string2
	#
	# 解説
	# 	2つの文字列を比較し、3つの結果を返す関数。
	# 	= 0
	# 	< -1
	# 	> 1
	#
	if [ $# -ne 2 ]; then
		echo "Usage: StrCmp string1 string2" 1>&2
		exit 1
	fi

	if [ "$1" = "$2" ]; then
		echo "0"
	else
		_TMP=`{ echo "$1"; echo "$2"; } | sort | sed -n '1p'`

		if [ "$_TMP" = "$1" ]; then
			echo "-1"
		else
			echo "1"
		fi
	fi
}
