#run 'ln -s ~/.myzsh/zshrc ~/.zshrc && ln -s ~/.myzsh/gemrc ~/.gemrc && ln -s ~/.myzsh/irbrc ~/.irbrc'

export ZSH=$HOME/.myzsh

#use mac write this in ~/.zshrc
source $ZSH/mac.zsh

#use linux write this in ~/.zshrc
#source $ZSH/linux.zsh

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE="true"

plugins=()
eval "$(rbenv init -)"

export ZSH_THEME="mrtazz"
