#
# 10/18/19 RTK; Organize init scripts as shown below
#   Also sync across machines verdascend, rymac, splitmac
#
#   Call order:
#       bash_profile
#           bashrc
#               bash_alias
#               conda
#

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
