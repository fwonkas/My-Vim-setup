" # vim config

syntax enable

set nocompatible

" ## vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" ### vim bundles
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-ruby/vim-ruby'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'vim-scripts/loremipsum'
Bundle 'godlygeek/tabular'
Bundle 'docunext/closetag.vim'
Bundle 'nono/jquery.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'vim-scripts/Arduino-syntax-file'
Bundle 'sleistner/vim-jshint'
Bundle 'wincent/Command-T.git'
" Bundle 'vim-scripts/vcscommand.vim'
" Bundle 'garbas/vim-snipmate'
" Bundle 'carlosvillu/coffeScript-VIM-Snippets'
" Bundle 'jeffkreeftmeijer/vim-numbertoggle'

filetype plugin indent on
" end vundle config

" Read config when vimrc is written
autocmd! bufwritepost .vimrc source %

autocmd! BufNewFile,BufRead *.ftl setlocal ft=ftl

" Solarized
set background=dark
colorscheme solarized

set t_Co=256
set colorcolumn=80

let mapleader=";"

set number
set ruler
set hlsearch
set incsearch
set showmatch

set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set expandtab
set ai
set si
set wrap
set scrolloff=3
set relativenumber

set mouse=a

" ## Mapped keys
" show JS compiled from CS
map <F1> :CoffeeCompile<CR>
" show/hide nerdtree pane
map <F2> :NERDTreeToggle<CR>
" remove trailing spaces
map <leader><space> :%s/\s\+$//<CR>
" toggle hard/soft tabs
map <leader>T :set noexpandtab!<CR>
" toggle showing tabs and EOLs
nmap <silent> <leader>s :set nolist!<CR>
" <leader>-directional will switch splits
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>

" ### Various bracket an paren completions
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap        (  ()<Left>
inoremap        ((  (
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap        [  []<Left>
inoremap        [[  [
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif
