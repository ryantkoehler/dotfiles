#	.cshrc 
#	Ryan Koehler
#
#   10/27/10 RTK from personal .csrch with mods for Mac (QuantaLife) QQQ
#   1/4/11 RTK; Add PERLLIB
#   2/21/11 RTK; More cross-sys cleaning. Also TERM test so silent with rsync 
#   12/27/11 RTK; Add mysql to path 
#   1/14/12 RTK; Move /opt stuff further down path (screwing python on Mac)
#   2/12/13 RTK; Update for ubuntu; Add colors
#   4/8/13 RTK; Minor update logical paths
#   3/16/14 RTK; /opt out (doesn't even exist on ubuntu). Kill QL stuff
#   7/4/14 RTK; Add path for bowtie2
#   11/23/14 RTK; Remove a few aliases 
#

set ostory = "false"
if ($?TERM) then
    if ( $TERM != "dumb" ) then
        set ostory = "TRUE"
    endif
endif

set host = `hostname`
set yall = `whoami`
set osys = `uname`

if ( $ostory == "TRUE" ) then
    #   Color + bold for host via \e[1;31m <host> \e[0m 
    #   31 = red; 32 = green; 33 = yellow; 34 = blue; 35 = magenta; 36 = cyan
    echo " "
    echo "Setting for $yall on\e[1;31m ${host} \e[0munder $osys"
endif


################################################## 
#   Prompt codes: %S = start reverse video; %s end
#       %m = machine (hostname); %c = cwd; %h = history
#set 	prompt="%S%m [%c]%s \!> "
#set 	prompt="%S%{\033[1;32m%}%m%{\033[0m%}%s [%c] %h> "
if ( $host == "verdascend" ) then
    set 	prompt="%S%{\033[1;32m%}%m [%c4]%{\033[0m%}%s %h> "
else if ( $host == "verdy" ) then
    set 	prompt="%S%{\033[1;36m%}%m [%c4]%{\033[0m%}%s %h> "
else
    set 	prompt="%S%m [%c]%s \!> "
endif

################################################## 
# 	Command alias collection	cccc
################################################## 
umask 	022
set 	history=1000
limit 	coredumpsize 0k
setenv 	EDITOR  vi
setenv 	PAGER   more 

unset 	noclobber	
unalias vi
unalias ls
unalias rm
unalias cp
unalias mv
unalias rename

alias dir   "dir -x"
alias dirw 	"ls -lasF"
alias dirt 	"ls -latrF"
alias dirc  "ls -C1"
alias dirp	"ls -ald * | grep '^-..x'"
alias subdir "ls -ald * | grep '^d'"
alias subdirt "ls -latrd * | grep '^d'"
alias c     "clear"
alias his	"history | grep -i --color"
alias proc 	"ps -ef | grep -i --color"
alias igrep "grep -i --color"
alias xdo 	"chmod a+x"
alias undo 	"chmod a-x"

alias cd        'set old="$cwd"; chdir \!*'
alias back      'set back="$old"; set old="$cwd"; cd "$back"; unset back'


set 	LD_LIBRARY_PATH=/usr/local/lib:/disks/vast/export/local-sol8/gcc/lib:/usr/lib:/usr/dt/lib:/usr/openwin/lib:/local/lib


################################################## 
# 	Directory alias collection	dddd
################################################## 
setenv ltop     ~
#setenv ltop	    ~ryan
#setenv ltop	    ~rkoehler       # QQQ

setenv tdir	    $ltop/tran
setenv data	    $ltop/data
setenv seqs 	$ltop/data_seqs

setenv Ryan		$ltop/Ryan
setenv vdir		$ltop/VerdAscend
setenv wdir		$ltop/VerdAscend/work
setenv play     $ltop/play
setenv class    $ltop/classes
setenv pix      $ltop/pix
setenv tools    $ltop/tools
setenv tests 	$ltop/prog_tests
setenv srcdir 	$ltop/src_libs
setenv pkgdir 	$ltop/packages
setenv cdir 	$ltop/code
setenv progs	$ltop/programs
setenv tex		$ltop/tex-unix

setenv gitdir   $ltop/git

setenv webdir   $ltop/web
setenv cgidir   $ltop/web/cgi


#####
#	Executable paths
#
setenv bdir 	$ltop/linbin
setenv pbdir 	$ltop/p-linbin
setenv sdir 	$ltop/scripts
setenv pdir 	$ltop/perlib
setenv PERL5LIB $pdir
set mysql_bin = "/usr/local/mysql/bin"

if ( $ostory == "TRUE" ) then
    echo "  Dir paths:"
    echo "   Top:      $ltop"
    echo "   Work:     $wdir"
    echo "   Play:     $play"
    echo "  Executable paths:"
    echo "   Scripts:  $sdir"
    echo "   Binaries: $bdir"
    echo "   Binaries: $pbdir"
endif


################################################## 
# 	Path		ppp 
################################################## 
#	SHAM; I can't figure out the syntax to simply append the path
#	A better more stable way?
#
set path = ( . )
set path = ( $path $bdir )
set path = ( $path $sdir )
set path = ( $path $pbdir )

# xxx /local/bin ? set path = ( $path /bin /usr/bin /usr/sbin /local/bin )
set path = ( $path /bin /usr/bin /usr/sbin )
set path = ( $path /usr/local/bin )
#set path = ( $path /opt/local/bin /opt/local/sbin )
set path = ( $path $mysql_bin ) 


################################################## 
# 	Misc stuff	mmmm
################################################## 

setenv viennapar	$data/vienna.par
setenv BLASTDB		$seqs/Blast

#set bowtie2_dir = $progs/Bowtie2
#set path = ( $path $bowtie2_dir ) 


if ( $ostory == "TRUE" ) then
    echo " "
endif


