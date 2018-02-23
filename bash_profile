if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -d "$HOME/.linuxbrew" ]; then
  PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
  LIBRARY_PATH="$HOME/.linuxbrew/lib:$LIBRARY_PATH"
  MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d "$HOME/.conda" ]; then
  PATH="$HOME/.conda/bin:$PATH"
fi

if [ -d "$HOME/.cargo" ]; then
  PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.nltk_data" ]; then
  NLTK_DATA="$HOME/.nltk_data:$NLTK_DATA"
  export NLTK_DATA
fi

if [ "$(uname)" == 'Linux' ]; then
  export LIBRARY_PATH
  export INFOPATH
fi
export MANPATH
export PATH
export PYTHONPATH

# Run tiddlywiki
if [ -d "$HOME/Dropbox/wiki" ]; then
  if ! pgrep node &>/dev/null; then
    nohup tiddlywiki "$HOME/Dropbox/wiki" --server > /dev/null &
  fi
fi

if [ -f "$HOME/.bash_local" ]; then
  source "$HOME/.bash_local"
fi
