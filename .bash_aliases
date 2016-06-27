# 4/28/16 RTK
#   Updating for toma mac
#
alias vi="vim"
alias dir="ls"
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
alias picard="java -jar /Users/ryan/programs/Picard/picard.jar"

#
#   Dir collection
export toma="$HOME/Toma"
export tdir="$HOME/tran"
export play="$HOME/play"
export tex="$HOME/tex-unix"
export data="$HOME/data"
export Ryan="$HOME/Ryan"
export seqs="$HOME/data_seqs"
export cdir="$HOME/code"
export gitdir="$HOME/git"
export progs="$HOME/programs"
export tests="$HOME/prog_tests"
export srcdir="$HOME/src_libs"

#   Executable and code library paths
export bdir="$HOME/lin-bin"
export sdir="$HOME/scripts"
export pbdir="$HOME/p-linbin"
# Python stuff
export pydir="$play/Python/pylib"
export anacondir="$HOME/anaconda2/bin"
export PYTHONPATH="$pydir"
# Perl stuff
export perldir="$play/Perl/perlib"
export PERL5LIB="$perldir"
export mysql_bin="/usr/local/mysql/bin/mysql"


#
export PATH=".:$bdir:$sdir:$pbdir:$anacondir:$mysql_bin:$PATH"

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
#
# 3/1/16 RTK; Doesn't fly on mac ...?
#shopt -s direxpand

