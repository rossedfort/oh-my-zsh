NEWLINE=$'\n'
ZSH_THEME_NVM_PROMPT_PREFIX="node:"
ZSH_THEME_NVM_PROMPT_SUFFIX=""

PROMPT='%{$fg[blue]%}%n%{$reset_color%} in %{$fg[green]%}%~ %{$reset_color%}'
PROMPT+='$(git_prompt_info)'
PROMPT+='%(?:%{$fg_bold[green]%}✔︎ :%{$fg_bold[red]%}✘ )%{$reset_color%}'
PROMPT+="${NEWLINE}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}△ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
# ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE
# ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE
# ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE
# ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED