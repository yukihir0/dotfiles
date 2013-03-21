autoload -U compinit
compinit

autoload -U colors
colors

export LANG=ja_JP.UTF-8
export PATH=/usr/local/bin:$PATH

export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

alias ls="ls -G"
alias grep="grep --color"
alias vi="vim"

setopt auto_pushd

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

PROMPT="%{[34m%}%m:%n%%%{[m%} "
PROMPT2="%{[32m%}%_%%%{[m%} "
RPROMPT="%{[34m%}[%~]%{[m%} "
SPROMPT="correct: %R -> %r ? "

bindkey -v

setopt nullglob
