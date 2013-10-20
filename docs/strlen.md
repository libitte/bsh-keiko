string length
============

```
expr "string" : '.*'
```

example
```
$ STRING=asdfghjkl
$ NUMCHARS=`expr "$STRING" : '.*'`
$ echo $NUMCHARS
9
$
```

```
NUMCHARS=`case "$STRING" in
	? ) echo 1 ;;
	* ) expr "$STRING" : '.*' ;;
esac`
```
