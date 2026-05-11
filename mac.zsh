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

# Homebrew 4.0+ 清华源
# export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
# export HOMEBREW_CASK_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/homebrew-cask.git"
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
# 中科大源（备选）
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_CASK_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-cask.git"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"

# DeepSeek V4 完整配置 - Claude Code 专用
# 1. 基础连接配置
export ANTHROPIC_BASE_URL="https://api.deepseek.com/anthropic"
export ANTHROPIC_AUTH_TOKEN="sk-98e55907888a4e2caac7a21b7af0ed72"
# 2. 主模型配置（复杂任务）
export ANTHROPIC_MODEL="deepseek-v4-pro[1m]"
export ANTHROPIC_DEFAULT_OPUS_MODEL="deepseek-v4-pro[1m]"
export ANTHROPIC_DEFAULT_SONNET_MODEL="deepseek-v4-pro[1m]"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="deepseek-v4-flash"
# 3. Claude Code 专用配置
export CLAUDE_CODE_SUBAGENT_MODEL="deepseek-v4-flash"
export CLAUDE_CODE_EFFORT_LEVEL="max"
