# 12/1/14 RTK
#   12/16/14 RTK
#
alias vi="vim"
alias dirw="ls -lasF"
alias dirt="ls -latrF"
alias dirc="ls -C1"
alias dirp="ls -ald * | grep '^-..x'"
alias subdir="ls -ald * | grep '^d'"
alias subdirt="ls -latrd * | grep '^d'"
alias c="clear"
alias his="history | grep -i --color"
alias proc="ps -ef | grep -i --color"
alias igrep="grep -i --color"
# Cannot use 'do' ... part of shell
alias xdo="chmod a+x"
alias undo="chmod a-x"
#
#   Dir collection
export play="$HOME/play"
export tex="$HOME/tex-unix"
export sdir="$HOME/scripts"
export bdir="$HOME/lin-bin"
export gitdir="$HOME/git"
export progs="$HOME/programs"
#   Innovari
export wdir="$HOME/Innovari/dev"
export idir="$HOME/Innovari"
#
export PATH="$PATH:$bdir:$sdir"

#
#   Prompt
#       \\u = user, \\h = host, \\w = working dir
#   Color... 
#       First \[\e[1;32m\] starts; Last \[\e resets to white
#       0:32 = normal green, 1:33 = bold yellow, 1:37 = bold white
export PS1="\[\e[1;33m\]\\u@\h \\w> \[\e[1;37m\]"

#   Special things to make bash behave nicer
#   $OLDPWD automatically set as previous directory 
alias back='cd "$OLDPWD"'
#   This is intended to stop tab-completion from escaping $env vars
shopt -s direxpand

