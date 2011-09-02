#aliases
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias mate='/Applications/TextMate.app/Contents/Resources/mate'
alias safari='open -a Safari'
alias googlechrome='open -a Google\ Chrome'
alias mplayer='open -a MplayerX'
alias quicktime='open -a QuickTime\ Player'
alias qq='open -a QQ'
alias v=vi
alias g=gvim
alias ls='ls -G'
alias back='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ll='ls -ahlF'
alias lp='ls -A'
alias h=history
alias p='pwd'
alias grep='grep --color=auto'

#rvm
alias 8='rvm 1.8.7'
alias 9='rvm 1.9.2'

#svn
alias up='svn up'
alias st='svn st'

#nginx
alias ns='sudo /opt/nginx/sbin/nginx'
alias nt='sudo /opt/nginx/sbin/nginx -t'
alias nk='sudo /opt/nginx/sbin/nginx -s quit' 
alias nr='sudo /opt/nginx/sbin/nginx -s reload' 
alias np='sudo ps -ef | grep nginx'
alias nrr='nr ; np'
alias nconf='sudo v /opt/nginx/conf/nginx.conf'

#mongodb
alias mongod='sudo /opt/mongodb/bin/mongod --dbpath=/opt/data/db'
alias mongo='sudo /opt/mongodb/bin/mongo'

#redis
alias redis='sudo /opt/redis/redis-server'

#git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gg='git pull'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -am'
alias gco='git checkout'
alias gb='git branch'
alias gl='git log'

#rails
alias sc='rails console'
alias scp='rails console production'
alias ss='rails server'
alias ssp='rails server -e production -p 4000'
alias sspd='rails server -e production -p 4000 -d'
alias ssd='rails server -u'
alias dbcp='rails dbconsole production'
alias dbc='rails dbconsole'
alias sg='rails generate'
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'
alias rst='touch tmp/restart.txt'


alias sudo='sudo '
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/mysql/bin
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
