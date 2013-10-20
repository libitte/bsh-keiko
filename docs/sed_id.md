sed example by id
=======

user id
```
$ id | sed -e "s/uid=\(.*\)(\(.*\)) gid=.*/\1/"
```

user name
```
$ id | sed -e "s/uid=\(.*\)(\(.*\)) gid=.*/\2/"
```

