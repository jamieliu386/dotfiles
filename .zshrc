export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

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
