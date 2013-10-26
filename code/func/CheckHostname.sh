#!/bin/sh
set -e
#
# filename: CheckHostname.sh
#

CheckHostname() {
	#
	# name
	# 	CheckHostname - ホストが存在するかどうか判定する
	#
	# 書式
	# 	CheckHostname [hostname]
	#
	# 解説
	# 	指定したホストが存在すれば true (0) を返し、
	# 	そうでなければ false (1) を返す。
	# 	ホスト名称を指定してない場合、
	# 	現在使用中のホスト名称をチェックする。
	#
	_PING=                   # ping コマンドを使い分ける
	_HOST=${1:=`hostname`}   # チェックするホスト名称
							 # $1 が null のときに hostname をつかう。

	case `uname -s` in
		Darwin ) _PING="ping -c1 $_HOST" ;;
		Linux )  _PING="ping -c1 $_HOST" ;;
		* )      return 1                ;;
	esac
	if [ `$_PING 2>&1 | grep -ci "Unknown host"` -eq 0 ]; then
		return 0
	else
		return 1
	fi
}
