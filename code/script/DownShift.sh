
#
# File: DownShift.sh
#
# Copyright 1995, by Hewlett-Packard Company
#
# The code in this file is from the book "Shell Programming
# Examples" by Bruce Blinn, published by Prentice Hall.
# This file may be copied free of charge for personal,
# non-commercial use provided that this notice appears in
# all copies of the file.  There is no warranty, either
# expressed or implied, supplied with this code.
#
# このファイルのコードはBruce Blinn著、Prentice Hall刊行の
# 「Shell Programming Examples」に掲載されていたものです。
# このファイルは、個人として営利を目的とせず利用する限り、
# 無償で複製してかまいません。その場合、複製のすべてに
# この説明文が含まれている必要があります。このコードに
# 関しては、明示的にも暗黙的にもいかなる保証も行いません。
#

DownShift() {
     #
     # 名称
     #    DownShift - 文字列中のアルファベット大文字を小文字に変換する
     #
     # 書式
     #    DownShift string
     #
     # 解説
     #    指定された文字列中に含まれるアルファベットの
     #    大文字を小文字に変換する関数。
     #    アルファベットでないものには何もしない。
     #    変換後の結果は標準出力に書き出す。
     #    

     echo "$@" | tr '[A-Z]' '[a-z]'
}
