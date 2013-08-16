set nocompatible
filetype off
 
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle "tomasr/molokai"

syntax on
filetype plugin indent on

NeoBundleCheck

set modeline
set nobackup
set incsearch
set smartcase
set showmatch
set backspace=eol,indent,start
set cursorline
set textwidth=0

set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

noremap j gj
noremap k gk
noremap gj j
noremap gk k

imap <C-h> <C-x><C-o>

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

"clipboard
set clipboard=unnamed,autoselect

