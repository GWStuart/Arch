" Vimrc configuration file 

set nocompatible
call plug#begin("~/.vim/plugged")

Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/sonokai'
Plug 'ervandew/supertab'

call plug#end()

set relativenumber number
syntax on
set tabstop=4
set autoindent
set cursorline
filetype on
filetype plugin on
filetype indent on  " Not too sure what this does
set shiftwidth=4
set ignorecase
set smartcase
set showcmd
set showmode
set mouse=a

set termguicolors
set t_Co=256

let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai

filetype plugin on
set omnifunc=syntaxcomplete#Complete

