" Misc {{{
set modelines=1
" }}}
" UI{{{
colorscheme elflord
syntax on
set ruler
set number              " show line numbers
" }}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
" }}}
" Plugins {{{
"=== plugins ===
call plug#begin('~/vimfiles/plugged') " directory for vim plugins 

Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end() " Initialize plugin system
" }}}
" NERDcommenter Settings {{{
let g:NERDSpaceDelims = 1 " adds space after comments in NERDcommenter
let g:NERDAltDelims_C= 1 " alternate style for C comments 
let g:NERDCompactSexyComs = 1 " makes block comments compact

" remap append comment to ca and alt delims to cA
map <leader>ca <plug>NERDCommenterAppend
map <leader>cA <plug>NERDCommenterAltDelims 
imap <C-q> <plug>NERDCommenterInsert
" }}}
" Backups {{{
" enables backup
set backup 
set writebackup 
" sets backup files to vimfiles/tmp instead of cluttering directory
set backupdir=~/vimfiles/tmp,.
set backupskip=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.
" }}}

set winaltkeys=menu
autocmd GUIEnter * simalt ~x

" vim:foldmethod=marker:foldlevel=0
