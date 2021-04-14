#run 'ln -s ~/.myzsh/zshrc ~/.zshrc && ln -s ~/.myzsh/gemrc ~/.gemrc && ln -s ~/.myzsh/irbrc ~/.irbrc'

export ZSH=$HOME/.myzsh

export ZSH_THEME="mrtazz"

#use linux write this in ~/.zshrc
#source $ZSH/linux.zsh

source $ZSH/oh-my-zsh.sh

#use mac write this in ~/.zshrc
source $ZSH/mac.zsh

DISABLE_AUTO_UPDATE="true"

eval "$(rbenv init -)"
