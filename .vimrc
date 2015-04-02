"Strip whitespace out of file on save
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set nocompatible
set showcmd

syntax enable
set number

" Tab stuff
set autoindent
set smarttab
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

nmap <F8> :TagbarToggle

autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl set expandtab
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang
