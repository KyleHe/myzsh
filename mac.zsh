#aliases
alias vi=nvim
alias vim=nvim
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias safari='open -a Safari'
alias chrome='open -a Google\ Chrome'
alias mplayer='open -a MplayerX'
alias quicktime='open -a QuickTime\ Player'
alias qq='open -a QQ'
alias ls='ls -G'
alias ws='cd ~/workspace/'
source $ZSH/aliases.zsh
#export PATH=~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export EDITOR=nvim
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
