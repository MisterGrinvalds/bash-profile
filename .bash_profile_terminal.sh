BLACK="\033[0;30m"
BLACKB="\033[1;30m"
RED="\033[0;31m"
REDB="\033[1;31m"
GREEN="\033[0;32m"
GREENB="\033[1;32m"
YELLOW="\033[0;33m"
YELLOWB="\033[1;33m"
BLUE="\033[0;34m"
BLUEB="\033[1;34m"
PURPLE="\033[0;35m"
PURPLEB="\033[1;35m"
CYAN="\033[0;36m"
CYANB="\033[1;36m"
WHITE="\033[0;37m"
WHITEB="\033[1;37m"
RESET="\033[0;0m"

function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "$branch"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "$commit"
  fi
}

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e $RED
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e $YELLOW
  elif [[ $git_status =~ "nothing to commit" ]]; then
    echo -e $GREEN
  else
    echo -e $WHITE
  fi
}

export CLICOLOR=1                                                   # Allow colors
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'            # Set tab name
PS1=$WHITE'\D{%F %T}'                                               # Prompt: Date
PS1+=$WHITE' → '
PS1+=$CYAN'\u'$WHITE' on '$BLUE'\h'                                 # Prompt: Machine
PS1+=$WHITE' → '
PS1+=$PURPLE'[\w]'                                                  # Prompt: Directory
PS1+='$(git_color)[$(git_branch)]'                          # Prompt: Git
PS1+=$WHITE'\n\$ '
export PS1
export LSCOLORS=fxgxexcxbxegxgxbxbxfxf                              # Color `ls` targets
