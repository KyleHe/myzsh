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
alias grep='grep --color=auto'
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
alias l='ls'
alias ll='ls -ahlF'
alias lp='ls -A'
alias h=history
alias p='pwd'
alias q='cd /Users/hemikk/workspace/beltal/quicker_buy/src/quickerbuy/'
alias qb='cd /Users/hemikk/workspace/beltal/quicker_buy/'
alias e='cd /Users/hemikk/workspace/beltal/blog/src/www.e-commercetips.com/'
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
alias 9='rvm 1.9.2-p136'
alias 8='rvm 1.8.7-p330'
alias ssh1='ssh quicker@quickerbuy.com'
alias ssh2='ssh beltal@192.168.1.2'

#rails 配置
sc () {
  if [ -f ./script/rails ]; then 
    rails c $@
  else
    ./script/console $@
  fi
}
#sg () {
  #if [ -f ./script/rails ]; then
    #rails g $@
  #else
    #./script/generate $@
  #fi
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
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#打开textmate得 Help → Terminal Usage…点 create link就ok了
# ln -s /Applications/TextMate.app/Contents/Resources/mate /usr/bin/mate
# svn switch --relocate http://oldPath http://newpath
export PATH=/opt/local/bin:$PATH:/usr/local/mysql/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

# The script sets environment variables helpful for PostgreSQL

export PATH=$PATH:/usr/local/postgresql9/bin
export PGDATA=/usr/local/postgresql9/data
export PGDATABASE=postgres
export PGUSER=postgres
export PGPORT=5432
export PGLOCALEDIR=/usr/local/postgresql9/share/locale
export MANPATH=$MANPATH:/usr/local/postgresql9/share/man
