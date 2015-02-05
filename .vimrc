"
" RTK 10/7/09
"   Added "colorscheme call ( script in ~/.vim/colors/ )
"       and also expandtab and nowrap
"   Also had to put tabstop and showmode in here, as it looks 
"       like .exrc is not looked at if .vimrc is around;
"	    ("vi" is apprently "vim" anyway).
"   5/15/10 RTK; Colors suck (can't get background black) so no call
"   11/10/10 RTK; Update for Mac MMM
"   1/19/14 RTK; Add folding=indent 
"   2/5/15 RTK; Add shiftwidth=4
"

set showmode

set tabstop=4
set shiftwidth=4
set expandtab

"set foldmethod=indent
set foldmethod=manual
"set nowrap

"   Color whip
"   enable 256 colors
set t_Co=256 

"   set colorscheme 
"colorscheme desert256 
"colorscheme ryan

" turn on syntax highlighting
" Doesn't seem to do anything? RTK 7/3/10
" syntax enable 

"   To make colors on Mac, these are needed
"   11/10/10 SHAM SHAM SHAM = Can't figure out 256 colors!
"set term=builtin_ansi
set term=ansi
set background=dark
syntax on
