set -o emacs

# Fn+Delete on macOS
bindkey "\e[3~" delete-char

if type brew &>/dev/null; then
  export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

  # https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

if type nvim &>/dev/null; then
  alias vim='nvim'
fi

if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
fi
if type jenv &>/dev/null; then
  eval "$(jenv init -)"
fi

if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
if type pyenv &>/dev/null; then
  eval "$(pyenv init --path)"
fi

if type rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

if type starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
