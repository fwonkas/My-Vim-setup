" # vim config

set nocompatible

" ## vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" ### vim bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'carlosvillu/coffeScript-VIM-Snippets'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-ruby/vim-ruby'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-surround'

filetype plugin indent on
" end vundle config

" Read config when vimrc is written
autocmd! bufwritepost .vimrc source %

let mapleader=","

set number
set ruler
set hlsearch
set incsearch
set showmatch

set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
" set expandtab
set ai
set si
set wrap
set scrolloff=3

" ## Mapped keys
" show JS compiled from CS
map <F1> :CoffeeCompile<CR>
" show/hide nerdtree pane
map <F2> :NERDTreeToggle<CR>
" remove trailing spaces
map <leader><space> :%s/\s\+$//<CR>
" toggle hard/soft tabs
map <leader>t :set noexpandtab!<CR>
" toggle showing tabs and EOLs
nmap <silent> <leader>s :set nolist!<CR>
