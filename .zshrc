export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="awesomepanda"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# add go/bin to path
export PATH=$PATH:$(go env GOPATH)/bin

# aliases
alias vim=nvim