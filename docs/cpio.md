cpio
======

cpio  works as a filter accepting standard input and writing to standard output. cpio  allows you to copy files into and out of a cpio  archive.

The input to cpio is the list of files. That means that results of ls  or find  command can be piped directly into cpio.  You can specify a device or file to which cpio will send its output, rather than sending it to stdout.

Piping find  command output into cpio allows to copy the entire directory tree while preserving the permissions, times, and ownership of every file and subdirectory. To do so, combine find  and the cpio  command, like this:

```
cd SourceDirectory
find . -depth -print | cpio -pdum DestinationDirectory
```



Examples
---------

```
cd ~/code/shellscript/bsh-keiko/
find . -depth -print | cpio -pdum ~/localrepos/github.com/bsh-keiko
```

alternative solution:

```
$ (cd bsh-keiko; tar -cf - .) | (cd ~/localrepos/github.com/test_dest; tar -xf -)
```
