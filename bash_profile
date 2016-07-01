if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
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

# Setup the local environment. Used for a shared machine.
if [ -d ~/.local ]; then
  PATH="$HOME/.local/bin:$HOME/.local/usr/bin:$PATH"
  LIBRARY_PATH="$HOME/.local/lib:$HOME/.local/usr/lib:$LIBRARY_PATH"
  LD_LIBRARY_PATH="$HOME/.local/lib:$HOME/.local/usr/lib:$LD_LIBRARY_PATH"
fi

if [ -d ~/.linuxbrew ]; then
  PATH="$HOME/.linuxbrew/bin:$PATH"
  LIBRARY_PATH="$HOME/.linuxbrew/lib:$LIBRARY_PATH"
  LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
  MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ "$(uname)" == 'Linux' ]; then
  export LIBRARY_PATH
  export LD_LIBRARY_PATH
  export MANPATH
  export INFOPATH
fi
export PATH
export PYTHONPATH
