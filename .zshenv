typeset -U PATH
setopt no_global_rcs

# homebrew path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ndenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

# plenv
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# go
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# ssh-agentd
SOCK="/tmp/ssh-agent-$USER"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
  rm -f $SOCK
  ln -sf $SSH_AUTH_SOCK $SOCK
  export SSH_AUTH_SOCK=$SOCK
fi

# prevent warning brew doctor: exclude pyenv from PATH
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"
