NEWLINE=$'\n'

export ZSH_THEME_NVM_PROMPT_PREFIX="node:"

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
  color 2 '%p'
}

function getHostname() {
  color 4 '%m'
}

function getDir() {
  color 4 '%~' # %1d for current dir only
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

# @$(getHostname)
PROMPT='$(getTime) $(getUser)@$(getHostname) in $(getDir) $(git_prompt_info) $(getExit)'
PROMPT+="${NEWLINE}"
