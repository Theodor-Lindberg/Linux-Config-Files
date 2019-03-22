export PATH=$PATH:~/bin

function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo "$RETVAL"
}

export PS1="\[\e[32;40m\]\u\[\e[m\]\[\e[37m\]-\[\e[m\]\[\e[36m\]\W\[\e[m\][\`nonzero_return\`] "

alias cls='clear && ls'
alias ls='ls -F --color='always''

function cd_up_cnt() {
	cd $(printf "%0.0s../" $(seq 1 $1));
}

function cd_up_f() {
	case $1 in
	*[!0-9]*)
		cd $(pwd | sed -r "s|(.*/$1[^/]*/).*|\1|")
		;;
	*)
		cd $(printf "%0.0s../" $(seq 1 $1));
		;;
	esac
}

alias 'cdt'='cd_up_cnt'
alias 'cdf'='cd_up_f'
alias '..'='cd ..'
alias '...'='cd ../..'