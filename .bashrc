# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

##########################################
#   9/5/14 RTK

#   Prompt
# \h = host     \W = working dir    \! = history number
# \[\e[7;36\] = inverse video, cyan; 31=red, 32=green, 33=yellow
PS1='\[\e[7;36m\] \h [\W] \[\e[m\] \!> '

alias back="cd -"
alias dirc="ls -C1"
alias dirw="ls -lasF"
alias dirt="ls -latrF"
alias dirp="ls -ald * | grep '^-..x'"
alias subdir="ls -ald * | grep '^d'"
alias do="chmod a+x"
alias his="history | grep -i --color"
alias c="clear"

export tdir=~/tran
export play=~/play

