#!/bin/sh
set -e

#
# File: IsNumeric.sh
#

IsNumeric() {
	#
	# 名称
	#	IsNumeric - 文字列が数値かどうか判定する
	#
	# 書式
	# 	IsNumeric string
	#
	# 解説
	# 	指定した文字列が数値で構成されていれば真 (0) を返す
	# 	何か数値以外の文字が含まれていた場合には偽 (1) を返す。
	#
	if [ $# -ne 1 ]; then
		return 1
	fi

	expr -- "$1" + 1 >/dev/null 2>&1
	if [ $? -ge 2 ]; then
		return 1
	fi

	return 0
}
