" Misc {{{

set modelines=1 " allows specific settings for file (vim will check last line)
set textwidth=79 " sets textwidth to 79 chars
set backspace=2 " make backspace work like most other programs
set encoding=utf-8

" }}}
" UI{{{
colorscheme solarized 
set background=light  
syntax enable " enable syntax highlighting
set ruler           " show numbers
set rnu             " show relative line numbers
set guifont=Consolas:h11:cANSI  " set font to consolas
set lazyredraw " Make things faster

" }}}
" Binds{{{

" stops space from moving cursor when in visual mode
nnoremap <Space> <Nop>
" disable ex-mode for now...
nnoremap Q <Nop>
" space controls folds
nnoremap <Space> za
" maps leader to comma
let mapleader = ","

" }}}
" Spaces & Tabs {{{

set expandtab       " tabs are spaces
set tabstop=4       " number of spaces vim shows when it sees a tab
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4

" }}}
" Indentation {{{

filetype plugin indent on
set autoindent
autocmd FileType c setlocal shiftwidth=2 softtabstop=2 expandtab

" }}}
" Folding {{{

set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10    " start with fold level of 1

" }}}
" Plugins {{{
"=== plugins ===
call plug#begin('~/vimfiles/plugged') " directory for vim plugins 

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe'
Plug 'lervag/vimtex' 
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'godlygeek/tabular'

call plug#end() " Initialize plugin system
" }}}
" Ctrl-P {{{

" enables the silver searcher
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

let g:ctrlp_match_window = 'bottom,order:ttb' " matches from bottom to top
let g:ctrlp_switch_buffer = 0 " open files in new buffer
let g:ctrlp_working_path_mode = 0 " allow change in working path
let g:ctrlp_user_command = 'ag %s -l -g ""' " tells ctrp to use ag
"}}}
" UltiSnips/YouCompleteMe {{{

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" disable ycm tab usage
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"}}}
" NERDcommenter {{{

" remap append comment to ca and alt delims to cA
map <leader>ca <plug>NERDCommenterAppend
map <leader>cA <plug>NERDCommenterAltDelims

" maps ctrl + q to insert comment (in insert mode)
imap <C-q> <plug>NERDCommenterInsert

" remaps cc to toggle comment
map <leader>cc <plug>NERDCommenterToggle

let g:NERDCreateDefaultMappings = 0 " disables default mappings
let g:NERDSpaceDelims = 1 " adds space after comments in NERDcommenter
let g:NERDAltDelims_C= 1 " alternate style for C comments 
let g:NERDCompactSexyComs = 1 " makes block comments compact

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
" Pasting {{{

"use system clipboard
set clipboard=unnamed

"}}}
" Searching{{{
set hlsearch  " highlight searched word
set incsearch  " search while typing

" allows search highlight to be toggled (prefered over nohlsearch as this can
" be toggled
nnoremap <F3> :set hlsearch!<CR>
" }}}
" GVIM/Windows {{{
set winaltkeys=menu " enables alt + menu commands
set guioptions -=m " removes menu bar gvim
set guioptions -=T " removes toolbar gvim

" autocmd GUIEnter * simalt ~x " starts gvim maximised (use maximise.dll instead) 

" }}}

" modeline sets foldmethod to marker and folds everything
" vim:foldmethod=marker:foldlevel=0