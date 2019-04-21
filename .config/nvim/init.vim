" --- basic setting ---

" disable vi compatible
set nocompatible

" disable detect file type
filetype off

" disable create vi file
set nobackup
set noundofile

" file encode
set encoding=utf-8
set fileencoding=utf-8

" LF
set fileformat=unix

" tab
set expandtab
set smarttab
set shiftround
set tabstop=2
set softtabstop=2
set shiftwidth=2

" serch & replace
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

" enable clipboard
set clipboard=unnamed

" enable backspace in insert mode
set backspace=eol,indent,start

" disable automatic line feed
set textwidth=0


" --- display setting ---

" disable title
set notitle

" highlight corsor line
set cursorline

" highlight match bracket
set showmatch


" --- key map setting ---

" nomal mode / visual mode
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" insert mode
imap <C-h> <C-x><C-o>
imap <C-j> <esc>


" ---  workaround ---

" disable redraw(scroll speed up)
set lazyredraw

" disable foldmethod in insert mode(reduce cpu)
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif


" --- matcht.vim ---
runtime macros/matchit.vim


" --- dein.vim ---
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

if dein#check_install()
  call dein#install()
endif
