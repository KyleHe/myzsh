#run 'ln -s ~/.myzsh/zshrc ~/.zshrc && ln -s ~/.myzsh/gemrc ~/.gemrc && ln -s ~/.myzsh/irbrc ~/.irbrc'

export ZSH=$HOME/.myzsh

#export RVM=$HOME/.rvm

export ZSH_THEME="mrtazz"

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE="true"

#sudo ~/.myzsh/trackpoint

plugins=(
  git
  osx
  rbenv
  ruby
)

#use Mac write this in ~/.zshrc
source $ZSH/mac.zsh

#use Linux write this in ~/.zshrc
#source $ZSH/linux.zsh
