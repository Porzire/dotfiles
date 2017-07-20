#if [ -f ~/.bashrc ]; then
#  source ~/.bashrc
#fi

# Color the terminal print.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -d ~/.linuxbrew ]; then
  PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
  LIBRARY_PATH="$HOME/.linuxbrew/lib:$LIBRARY_PATH"
  MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d ~/miniconda3 ]; then
  PATH="$HOME/miniconda3/bin:$PATH"
fi

if [ "$(uname)" == 'Linux' ]; then
  export LIBRARY_PATH
  export INFOPATH
fi
export MANPATH
export PATH
export PYTHONPATH

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi

# vim: ft=sh
