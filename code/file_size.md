exam file size
============

```
wc -l file | awk '{print $1}'
```

alternative solution:

```
ls -l file | awk '{print $6}'
```
