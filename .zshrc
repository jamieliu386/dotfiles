if type brew &>/dev/null; then
  export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
fi

export PATH="$HOME/.jenv/bin:$PATH"
if command -v jenv >/dev/null 2>&1; then
  eval "$(jenv init -)"
fi

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
