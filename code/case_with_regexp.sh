#!/bin/sh
set -e

STR="$1"

case ${STR} in
	abc) echo "abc";;
	def | ghi ) echo '(def | ghi)';;
	abc* ) echo 'abc*';;
	[Yy]* ) echo '[Yy]*';;
	"[Yy]" ) echo '"[Yy]"';;
	"[Yy]*" ) echo '"[Yy]"';; # Y* あるいは y* という文字に限る
	"[Yy]"* ) echo '"[Yy]"';; # same as [Yy]*
	[!Nn]* ) echo '[!Nn]*';;
	[a-z]*[AB] ) echo '[a-z]*[AB]';;
	\* ) echo '\*';;   # これらはすべてアスタリスク(*)
	"*" ) echo '"*"';; # これらはすべてアスタリスク(*)
	'*' ) echo '*';;   # これらはすべてアスタリスク(*)
	\? ) echo '\?';;
	? ) echo '?';; # any one word
	"" ) echo '""';; # nothing (null or undefined variable)
	'""' ) echo ''""'';;  # ダブルクオーテーションが2つ並んでいる状態
	\"\" ) echo '\"\"';;  # ダブルクオーテーションが2つ並んでいる状態
	* ) echo '*';; # 今までの条件に合致しない残り全部
esac

