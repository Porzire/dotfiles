if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export CLICOLOR=1
export LS_COLORS=GxFxCxDxBxegedabagaced

if [ -d ~/.linuxbrew ]; then
  PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
  LIBRARY_PATH="$HOME/.linuxbrew/lib:$LIBRARY_PATH"
  LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
  MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d ~/.virtualenv ]; then
  PATH="$HOME/.virtualenv/bin:$PATH"
fi

if [ "$(uname)" == 'Linux' ]; then
  export LIBRARY_PATH
  export LD_LIBRARY_PATH
  export MANPATH
  export INFOPATH
fi
export PATH
export PYTHONPATH

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi

# vim: ft=sh
