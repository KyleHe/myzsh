#run 'ln -s ~/.myzsh/zshrc ~/.zshrc && ln -s ~/.myzsh/ghostty_config ~/.config/ghostty/config && ln -s ~/.myzsh/gemrc ~/.gemrc && ln -s ~/.myzsh/irbrc ~/.irbrc'
#run 'ln -s ~/.myzsh/starship.toml ~/.config/starship.toml && ln -s ~/.myzsh/tmux.conf ~/.tmux.conf'
#starship and tmux install 'brew install starship tmux' 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm' 按 Ctrl+b 然后按 Shift+i
#安装字体'brew install --cask font-meslo-lg-nerd-font'

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

# 自定义用户名显示
if [[ "$USER" == "heshirui" ]]; then
    export STARSHIP_USERNAME="KyleHe"
else
    export STARSHIP_USERNAME="$USER"
fi

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
