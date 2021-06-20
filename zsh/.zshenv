# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cache files
export XDG_CACHE_HOME="$XDG_CACHE_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Max events for internal history
export HISTSIZE=10000
# Max events in history file
export SAVEHIST=10000


export DOTFILES="$HOME/dotfiles"

# From ~/.bashrc
alias ls='ls --color=auto'
alias vim='nvim'
alias night='redshift -P -O 4000'
alias day='redshift -P -O 6000'

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
