# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory
setopt share_history
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/laterman/.zshrc'

autoload -U compinit promptinit
compinit
promptinit
# End of lines added by compinstall

export TERM=rxvt
export EDITOR="vim"
prompt redhat
