less reverse
============

```
grep -n '.*' [filename] | sort -n -r | sed 's/^[0-9]*://' | less
```

example
```
$ grep -n '.*' ../docs/remove_commend.md | sort -n -r | sed 's/^[0-9]*://' | less
```
