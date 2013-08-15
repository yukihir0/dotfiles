if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
  alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
fi

# rbenv
eval "$(rbenv init -)"

# ndenv
export PATH=$PATH:$HOME/.ndenv/bin
eval "$(ndenv init -)"

# plenv
export PATH=$PATH:$HOME/.plenv/bin
eval "$(plenv init -)"

