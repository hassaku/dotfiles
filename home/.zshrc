# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt extended_history

export EDITOR="/usr/local/bin/vim"
export AWS_CONFIG_FILE=~/.aws/config

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias ls='ls -G'
alias vi='vim'
alias history='history -i'
alias viewer='open -a /Applications/Preview.app/Contents/MacOS/Preview'
alias textedit='open -a TextEdit'

alias git-changed-files='git log --name-only'
alias git-ignore-staged-file='git update-index --assume-unchanged'
alias git-unignore-staged-file='git update-index --no-assume-unchanged'

alias duhg='du -h -x -d 1 ./ | grep G'
alias duhm='du -h -x -d 1 ./ | grep M'
