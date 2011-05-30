#aliases
alias v=vi
alias g=gvim
alias up='svn up'
alias st='svn st'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gg='git pull'
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
alias ns='sudo /opt/nginx/sbin/nginx'
alias nt='sudo /opt/nginx/sbin/nginx -t'
alias nk='sudo kill -QUIT `cat /opt/nginx/logs/nginx.pid`'
alias nr='sudo kill -HUP `cat /opt/nginx/logs/nginx.pid`'
alias np='sudo ps -ef | grep nginx'
alias nrr='nr ; np'
alias nconf='sudo v /opt/nginx/conf/nginx.conf'
alias mongod='sudo /opt/mongodb/bin/mongod --dbpath=/opt/data/db'
alias mongo='sudo /opt/mongodb/bin/mongo'
alias redis='sudo /opt/redis/redis-server'

#rails 配置
sc () {
  if [ -f ./script/rails ]; then
    rails c $@
  else
    ./script/console $@
  fi
}
#sg () {
#  if [ -f ./script/rails ]; then
#    rails g $@
#  else
#    ./script/generate $@
#  fi
#}
ss () {
  if [ -f ./script/rails ]; then
    rails s $@
  else
    ./script/server $@
  fi
}
ssd () {
  if [ -f ./script/rails ]; then
    rails s -u $@
  else
    ./script/server -u $@
  fi
}
ssp () {
  if [ -f ./script/rails ]; then
    rails s -p 4000 -e production $@
  else
    ./script/server -p 4000 -e production $@
  fi
}
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'


alias sudo='sudo '
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export EDITOR=vi
export TERM="xterm-256color"
