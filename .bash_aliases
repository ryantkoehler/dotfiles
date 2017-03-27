# 4/28/16 RTK
#   Updating for toma mac
# 8/11/16 RTK; Add -k to dirw and dirt (first col kb, not 'blocks')
# 9/14/16 RTK; Color prompt for various machines
# 11/10/16 RTK; TOMA dirs, system-specific shams
# 3/27/17 RTK; Sync rymac, golem, gort, vast


#
# Get system for system-specific shams...
toma_serv=0
if [ `hostname | grep -i verd` ]; then
    this_sys='verd'
elif [ `hostname | grep -i golem` ]; then
    this_sys='golem'
    toma_serv=1
elif [ `hostname | grep -i gort` ]; then
    this_sys='gort'
    toma_serv=1
elif [ `hostname | grep -i vaast` ]; then
    this_sys='vaast'
    toma_serv=1
elif [ `uname | grep -i darwin` ] && [ `hostname | grep -i ryan` ]; then
    this_sys='rymac'
else
    this_sys='generic'
fi


export EDITOR="vim"

# 
# Generic alias collection
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


#
# Dir collection
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

# Generic executable, script, and program library paths
export bdir="$HOME/lin-bin"
export sdir="$HOME/scripts"
export pbdir="$HOME/p-linbin"

#   TOMA server (e.g. golem) dirs; seq data, sequencing (official, play)
if [ $toma_serv -gt 0 ]; then
    export tdata="/mnt/vol3/reference_datasets"
    export tseqs="/mnt/staging/sequencing"
    export pseqs="/mnt/vol3/shared_projects/ryan/seqpipe"
fi


# Program / package specific stuff ...
#   Python 
export pydir="$play/Python/pylib"
export anacondir="$HOME/anaconda2/bin"
# sham; dnanexus apparently needs to mess with this, so can't set 
if [ $toma_serv -gt 0 ]; then
    echo "# ${this_sys}: NOT setting python path $pydir"
else
    export PYTHONPATH="$pydir"
fi

#   Perl 
export perldir="$play/Perl/perlib"
export PERL5LIB="$perldir"

#   mysql stuff
#export mysql_bin="/usr/local/mysql/bin/mysql"

#   BLAST databases
export BLASTDB="$seqs/Blast"

#   Picard java sham 
alias picard="java -jar $progs/Picard/picard.jar"

#   RTG 
rtgdir="$progs/RTG/rtg-tools-2016-08-03"
rtgdir="$progs/RTG/rtg-tools-3.7.1/"

#
# Set path; Mine first
#   Don't add anaconda, RTG or mysql on golem
if [ $toma_serv -gt 0 ]; then
    echo "# ${this_sys}: No anaconda, No rtg added to path"
    export PATH=".:$bdir:$sdir:$pbdir:$PATH"
else
    export PATH=".:$bdir:$sdir:$pbdir:$anacondir:$rtgdir:$PATH"
fi


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
if [ $this_sys == 'verd' ]; then
    export PS1="\[\e[1;32m\]\\u@\h \\w> \[\e[1;37m\]"
elif [ $this_sys == 'rymac' ]; then
    export PS1="\[\e[1;33m\]\\u@\h \\w> \[\e[1;37m\]"
elif [ $this_sys == 'golem' ]; then
    export PS1="\[\e[1;35m\]\\u@\h \\w> \[\e[1;37m\]"
    unset LS_COLORS
else
    export PS1="\[\e[1;36m\]\\u@\h \\w> \[\e[1;37m\]"
fi


#   Special things to make bash behave nicer
#   $OLDPWD automatically set as previous directory 
alias back='cd "$OLDPWD"'

#   For sort (not tested too much???)
export LC_ALL=C    

#   This is intended to stop tab-completion from escaping $env vars
#
# 3/1/16 RTK; Doesn't fly on mac ...?
#shopt -s direxpand
