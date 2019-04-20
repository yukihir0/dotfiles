set notitle
set nocompatible
filetype off
set lazyredraw

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:toml      = '~/.config/nvim/dein/dein.toml'
  let s:lazy_toml = '~/.config/nvim/dein/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set modeline
set nobackup
set noundofile
set incsearch
set smartcase
set showmatch
set backspace=eol,indent,start
set cursorline
set textwidth=0
set clipboard=unnamed

set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

noremap j gj
noremap k gk
noremap gj j
noremap gk k

imap <C-h> <C-x><C-o>
imap <C-j> <esc>

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

runtime macros/matchit.vim

