PROMPT='%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[magenta]%}%m%{$reset_color%}:%{$fg[cyan]%}%c%{$reset_color%}$ '
RPROMPT='%{$fg_bold[green]%}$(git_prompt_info)%{$fg_bold[green]%}<%{$fg_bold[cyan]%}$(rvm-prompt i v g)%{$fg_bold[green]%}>%{$reset_color%}% '

ZSH_THEME_GIT_PROMPT_PREFIX="<%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}✗%{$fg[green]%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}>"
