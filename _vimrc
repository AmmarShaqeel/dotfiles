syntax on
colorscheme elflord

set ruler

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces

set number              " show line numbers

call plug#begin('~/vimfiles/plugged') " directory for vim plugins 

Plug 'scrooloose/nerdcommenter'

call plug#end() " Initialize plugin system


let g:NERDSpaceDelims = 1 " adds space after comments in NERDcommenter
let g:NERDAltDelims_C= 1 " alternate style for C comments 
let g:NERDCompactSexyComs = 1 " makes block comments compact

set backup
set writebackup
set backupdir=~/vimfiles/tmp,.
set backupskip=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.