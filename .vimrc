"Strip whitespace out of file on save
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set nocompatible
set showcmd

filetype on
filetype plugin on
syntax enable
set number

" Tab stuff
set autoindent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4

"English spellcheck
if version >= 700
    set spl=en spell
    set nospell
endif

set wildmenu
set wildmode=list:longest,full
set mouse=a

set backspace=2

set incsearch
set hlsearch
set magic
set showmatch
set mat=3

set laststatus=2

filetype plugin indent on
syntax on
execute pathogen#infect()

"nmap <F8>:TagbarToggle
