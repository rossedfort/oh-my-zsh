NEWLINE=$'\n'

export ZSH_THEME_NVM_PROMPT_PREFIX="node:"

# Set terminal title
export DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# spectrum_ls in terminal for colors
function color() {
  local col=$1
  local text=$2

  echo "%F{$col}$text%f"
}

SUCCESS=$(color 2 '✔︎')
FAILURE=$(color 1 '✘')

function getExit() {
  echo "%(?:$SUCCESS:$FAILURE)% "
}

function getUser() {
  color 2 '%n'
}

function getHostname() {
  color 4 '%m'
}

function getDir() {
  color 4 '%~'
}

function newline() {
  echo $'\n'
}

function getTime() {
  echo "[$(color 4 %D{%I:%M:%S})]"
}

ZSH_THEME_GIT_PROMPT_PREFIX="on $(color 4 '(')"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$(color 4 ')') $(color 3 '△') "
ZSH_THEME_GIT_PROMPT_CLEAN=$(color 4 ')')

PROMPT='$(getTime) $(getUser)@$(getHostname) in $(getDir) $(git_prompt_info) $(getExit)'
PROMPT+="${NEWLINE}"