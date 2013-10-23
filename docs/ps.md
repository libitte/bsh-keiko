`ps` Tips
========

```
$ ps -ax|grep httpd|grep -v grep|awk '{print $1}'
Warning: bad syntax, perhaps a bogus '-'? See /usr/share/doc/procps-3.2.8/FAQ
329
5320
24136
24137
24138
24139
24140
24141
24142
24143
24144
24145
24221
28003
```

```
$ pgrep httpd
329
5320
24135
24136
24137
24138
24139
24140
24141
24142
24143
24144
24145
24221
28003
```
