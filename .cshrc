# .cshrc - csh resource script, read at beginning of execution by each shell
#/

set history = 400
set savehist = 100
set mail = (/var/mail/$USER)
limit coredumpsize 0
set filec
set autolist
unset autologout
setenv  EDITOR  vi
setenv  PAGER   more
setenv  BLOCKSIZE       K
setenv HOSTNAME `hostname`
#set prompt = "%B$HOSTNAME <\!>%b "
#set prompt="\n%B%{\033[34m%}[%h] %d %D.%w.%Y %P\n%{\033[31m%}[%n][%m][%~]\n%{\033[30m%}%b"
set prompt="%B%{\033[32m%}[%m %l] %Y.%W.%D %T [%C]\n%{\033[32m%}[%h]%b "

# General aliases
alias h		    history 25
alias j		    jobs -l
alias so        'source ~/.cshrc'
alias la        ls -lA
alias grep      grep --color
alias egrep     egrep --color
alias zgrep     zgrep --color
alias zegrep    zegrep --color
switch ($OSTYPE)
case "FreeBSD":
	alias ls    ls -G
	breaksw
case "linux":
	alias ls    ls --color=tty
endsw

alias vnc-on    vncserver -depth 24 -geometry 3350x990
alias vnc-off   vncserver -kill

# A righteous umask
umask 2
