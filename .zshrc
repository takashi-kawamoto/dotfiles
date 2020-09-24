
##### alias の 設定 #####
alias .='cd ../'
alias ..='cd ../../'
alias ...='cd ../../../'
alias cls='clear'
alias hist='history'
alias lsa='ls -al'
alias so='source'
alias soz='source ~/.zshrc'
alias vi='vim'
alias viz='vim ~/.zshrc'
alias viv='vim ~/.vimrc'

##### go の 設定 #####
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

##### peco の 設定 #####
function peco-cd {
  cd "$( ghq list --full-path | peco)"
}

alias sd='peco-cd'

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
##### prezto のテーマ設定 #####
autoload -Uz promptinit
promptinit
prompt powerline 
