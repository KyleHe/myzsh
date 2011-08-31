#aliases
alias v=vi
alias g=gvim
alias back='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -ahlF'
alias lp='ls -A'
alias h=history
alias p='pwd'

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
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export EDITOR=vi
export TERM="xterm-256color"
