if type brew &>/dev/null; then
  export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

if type pyenv &>/dev/null; then
  eval "$(pyenv init -)"
fi

if type nvim &>/dev/null; then
  alias vim='nvim'
fi

if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
fi
if type jenv &>/dev/null; then
  eval "$(jenv init -)"
fi

if type starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
