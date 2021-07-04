export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv: accommodate for both local installations (where pyenv is in
# ~/.pyenv/bin) and global installations (like Homebrew)
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
if type pyenv &>/dev/null; then
  eval "$(pyenv init --path)"
fi
