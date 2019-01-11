export PATH=$PATH:~/bin

function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo "$RETVAL"
}

export PS1="\[\e[32;40m\]\u\[\e[m\]\[\e[37m\]-\[\e[m\]\[\e[36m\]\W\[\e[m\][\`nonzero_return\`] "
