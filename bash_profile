# Color the terminal print.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

POWERLINE_CONFIG_COMMAND="$HOME/Library/Python/2.7/bin/powerline-config"

# Add default site-packages for the unchangable apps. e.g. vim
PYTHONPATH="${PYTHONPATH}:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages"
export PYTHONPATH

PATH="/usr/local/bin:${PATH}"

# Add dropbox path
PATH="~/Dropbox/bin:${PATH}"

# Add mathlab.
PATH="/Applications/MATLAB_R2015b.app/bin:${PATH}"

# Add local python path.
PATH="$HOME/Library/Python/2.7/bin:${PATH}"

# Setting PATH for Python 3.5
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# MacPorts
PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

PATH="/usr/local/sbin:$PATH"

export PATH
