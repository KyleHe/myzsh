#run 'ln -s ~/.myzsh/zshrc ~/.zshrc && ln -s ~/.myzsh/gemrc ~/.gemrc && ln -s ~/.myzsh/irbrc ~/.irbrc'

export ZSH=$HOME/.myzsh

plugins=(
  git                # Git 别名和补全
  macos              # macOS 专用命令（如 `cdf` 进入 Finder 目录）
  brew               # Homebrew 补全
  zsh-autosuggestions   # 命令自动建议
  zsh-syntax-highlighting  # 命令语法高亮
  zsh-completions
  ruby
  z
  docker             # Docker 补全
  kubectl            # Kubernetes 补全
)
#export ZSH_THEME="mrtazz"

#use linux write this in ~/.zshrc
#source $ZSH/linux.zsh

# 历史命令保存位置
HISTFILE=~/.zsh_history

# 历史命令数量
HISTSIZE=10000       # 内存中保存的数量
SAVEHIST=100000       # 文件中保存的数量

# 历史命令去重
setopt HIST_IGNORE_DUPS    # 忽略连续重复的命令
setopt HIST_IGNORE_SPACE   # 忽略以空格开头的命令

source $ZSH/oh-my-zsh.sh

#use mac write this in ~/.zshrc
source $ZSH/mac.zsh

DISABLE_AUTO_UPDATE="true"

eval "$(rbenv init -)"
eval "$(starship init zsh)"
