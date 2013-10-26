#!/bin/sh
set -e

#
# File: DownShift.sh
#

DownShift() {
	#
	# Name
	# 	DownShift - 文字列中のアルファベット大文字を小文字に変換する
	#
	# Format
	# 	DownShift string
	#
	# 解説
	# 	指定された文字列中に含まれるアルファベットの
	# 	大文字を小文字に変換する関数。
	# 	アルファベットでないものには何もしない。
	# 	変換後の結果は標準出力に書き出す。
	#

	echo "$@" | tr '[A-Z]' '[a-z]'
}
