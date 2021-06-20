setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

autoload -U compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)


autoload -Uz prompt_purification_setup; prompt_purification_setup

autoload -Uz cursor_mode && cursor_mode

# Push current directory visited on the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT


# From ~/.bashrc ###
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
### From ~/.bashrc ###
#
# Enabling vi mode
bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

if [ "$(tty)" = "/dev/tty1" ];
then
  pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Self-composed scripts for automation
source $DOTFILES/zsh/scripts.sh

source ~/dotfiles/zsh/external/bd.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

