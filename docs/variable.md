variable
========

## $?

コマンド実行時の終了ステータス

* true で 0
* false で 0 以外の値

がセットされる


## $$

現在動作しているコマンドの "プロセスID"
そのUNIX上で必ずuniqueに割り当てられる。


## $!

& を使ってコマンドをバックグラウンドで走らせた場合、そのコマンドのプロセスIDが格納される。

```
command &
...
wait $!
```


## $-

そのシェルの起動時のフラグや, set コマンドを使って設定したフラグの一覧がセットされる。

```
$ echo $-
himBH
```

今動作しているシェルは, h, i, m, B, H というフラグが指定されているということ。
すなわち、 /bin/sh -himBH という形で実行されているということ。

