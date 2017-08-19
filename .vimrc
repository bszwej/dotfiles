set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" General
set nu
set encoding=utf-8
set history=700 
set autoread 
set cmdheight=2 
set ignorecase 
set incsearch
set hlsearch 
set showmatch 

" Formatting
syntax enable
colorscheme desert
set background=dark

" Mappings
map <F2> :!%
set ttimeout ttimeoutlen=50

nmap <c-p> <c-w>l
nmap <c-o> <c-w>k
nmap <c-i> <c-w>j
nmap <c-u> <c-w>h

