remove comments
================

コメント部分(#) をすべて除外
この方法だと行そのものは消えない

```
sed -e 's/#.*//' [file]
```

コメント行(#) のみを除去
この方法だと行中コメントは除去できない

```
sed -e '/^#/d' [file]
```

```
while read LINE
do
	case $LINE in
		\#* ) continue
			  ;;
		  * ) echo "$LINE"
			  ;;
	esac
done
```
