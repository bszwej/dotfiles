set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

syntax on
colorscheme desert

set background=dark
set number
set incsearch
set hlsearch
set ignorecase
set smartcase

