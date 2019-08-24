# 4/28/16 RTK
#   Updating for toma mac
# 8/3/16 RTK; Add -k to dirw and dirt (first col kb, not 'blocks')
# 8/11/17 RTK; Update for verdascend with ubuntu 16.06 and bash
# 11/26/17 RTK; Add classes alias
# 1/4/18 RTK; Clean up (mainly perl, anaconda in path; remove from .bashrc) 
# 12/1/18 RTK; Revisit to force on Ubuntu 8.4 (verdascend)
#
alias vi="vim"
alias dir="ls"
alias dirw="ls -laskF"
alias dirt="ls -latrkF"
alias dirc="ls -C1"
alias dirp="ls -ald * | grep '^-..x'"
alias subdir="ls -ald * | grep '^d'"
alias subdirt="ls -latrd * | grep '^d'"
alias c="clear"
alias his="history | grep -i --color"
alias proc="ps -ef | grep -i --color"
alias igrep="grep -i --color"
alias xdo="chmod a+x"
alias undo="chmod a-x"
alias open="xdg-open"

#
#   Dir collection
export toma="$HOME/Toma"
export tdir="$HOME/tran"
export play="$HOME/play"
export Ryan="$HOME/Ryan"
export classes="$HOME/Ryan/classes"
export wdir="$HOME/VerdAscend/work"
export tex="$HOME/tex-unix"
export pix="$HOME/pix"
export data="$HOME/data"
export seqs="$HOME/data_seqs"
export cdir="$HOME/code"
export gitdir="$HOME/git"
export progs="$HOME/programs"
export tests="$HOME/prog_tests"
export srcdir="$HOME/src_libs"
#export webdir="${play}/web"
export webdir="/var/www/html"
export cgidir="/usr/lib/cgi-bin"

#   Executable and code library paths
export bdir="$HOME/linbin"
export sdir="$HOME/scripts"
export pbdir="$HOME/p-linbin"
# Python stuff
export pydir="$play/Python/pylib"
export anacondir="$HOME/anaconda3/bin"
export PYTHONPATH="$pydir"
# Perl stuff
export perldir="$play/Perl/perlib"
export PERL5LIB="$perldir"
# mySQL
export mysql_bin="/usr/local/mysql/bin/mysql"

#   BLAST databases
export BLASTDB="$seqs/Blast"
#   Picard java sham 
#alias picard="java -jar /Users/ryan/programs/Picard/picard.jar"

#   Path
export PATH=".:$bdir:$sdir:$pbdir:$anacondir:$mysql_bin:$PATH"

#   For sort (not tested too much???)
export LC_ALL=C    

#
#   Prompt
#       \\u = user, \\h = host, \\w = working dir
#   Color... 
#       First \[\e[1;32m\] starts; Last \[\e resets to white
#       0:32 = normal green, 1:33 = bold yellow, 1:37 = bold white
#    30 = grey
#    31 = red
#    32 = green
#    33 = yellow
#    34 = blue
#    35 = magenta
#    36 = cyan
#    37 = white
host=`hostname`
if [[ $host = 'verdascend' ]]; then
    export PS1="\[\e[1;32m\]\\u@\h \\w> \[\e[1;37m\]"
else
    export PS1="\[\e[1;33m\]\\u@\h \\w> \[\e[1;37m\]"
fi

#   Special things to make bash behave nicer
#   $OLDPWD automatically set as previous directory 
alias back='cd "$OLDPWD"'
#   This is intended to stop tab-completion from escaping $env vars
#
# 3/1/16 RTK; Doesn't fly on mac ...?
# 12/1/18 RTK; Revisit to force on Ubuntu 8.4 (verdascend)
shopt -s direxpand

