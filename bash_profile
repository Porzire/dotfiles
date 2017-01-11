if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Color the terminal print.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -d ~/torch ]; then
  if ! type 'th' > /dev/null; then
    # Auto-activate torch
    . ~/torch/install/bin/torch-activate
  fi
fi

if [ -d ~/.linuxbrew ]; then
  PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
  LIBRARY_PATH="$HOME/.linuxbrew/lib:$LIBRARY_PATH"
  LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
  MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d ~/.virtualenv ]; then
  PATH="$HOME/.virtualenv/bin:$HOME/.linuxbrew/sbin:$PATH"
  PYTHONPATH="$HOME/.virtualenv/lib/python2.7/site-packages:$PYTHONPATH"
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
