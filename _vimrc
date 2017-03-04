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
Plug 'ctrlpvim/ctrlp.vim'

call plug#end() " Initialize plugin system


let g:NERDSpaceDelims = 1 " adds space after comments in NERDcommenter
let g:NERDAltDelims_C= 1 " alternate style for C comments 
let g:NERDCompactSexyComs = 1 " makes block comments compact

" remap append comment to ca and alt delims to cA
map <leader>ca <plug>NERDCommenterAppend
map <leader>cA <plug>NERDCommenterAltDelims 

" enables backup
set backup 
set writebackup 
" sets backup files to vimfiles/tmp instead of clutterint directory
set backupdir=~/vimfiles/tmp,. 
set backupskip=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.

