#aliases
alias v=vim
alias g=gvim
alias back='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ll='ls -ahlF'
alias lp='ls -A'
alias h='history'
alias p='pwd'

# Ruby
alias rb="ruby"
alias gin="gem install"
alias gun="gem uninstall"
alias gli="gem list"
alias sgem='sudo gem'

#nginx
alias ns='sudo /opt/nginx/sbin/nginx'
alias nt='sudo /opt/nginx/sbin/nginx -t'
alias nk='sudo /opt/nginx/sbin/nginx -s quit'
alias nr='sudo /opt/nginx/sbin/nginx -s reload'
alias np='sudo ps -ef | grep nginx'
alias nrr='nr ; np'
alias nconf='sudo v /opt/nginx/conf/nginx.conf'

#mongodb
alias mongof='sudo /opt/mongodb/bin/mongod --dbpath=/opt/data/db --fork --logpath /var/log/mongodb.log --logappend'
alias mongod='sudo /opt/mongodb/bin/mongod --dbpath=/opt/data/db'
alias mongo='sudo /opt/mongodb/bin/mongo'

#redis
alias redis='sudo /opt/redis/src/redis-server'

#git
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
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
alias gm='git merge'
alias grm='git status | grep deleted | awk '\''{print $3}'\'' | xargs git rm'

#rails
alias sc='rails console'
alias scp='rails console production'
alias ss='rails server'
alias ssp='rails server -e production -p 4000'
alias sspd='rails server -e production -p 4000 -d'
alias ssd='rails server -u'
alias sg='rails generate'
alias bi='bundle install'
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'
alias rst='touch tmp/restart.txt'

alias sudo='sudo '
