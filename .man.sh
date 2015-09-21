# Extended man usage
/usr/bin/man $* || w3m -dump http://google.com/search?q="$*"\&btnI | less ping
