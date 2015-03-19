# Colors
ResetColor="\[\033[0m\]"       # Text Reset

# Regular Colors
Red="\[\033[0;31m\]"          # Red
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Green="\[\033[0;32m\]"        # Green

# Bold
BRed="\[\033[01;31m\]"         # Red
BGreen="\[\033[01;32m\]"       # Green

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IGreen="\[\033[0;92m\]"       # Green

# Bold High Intensty
Magenta="\[\033[1;95m\]"      # Magenta

# Various variables
Time24="\t"
PathShort="\w"
User="\u"
HostName="\h"

CURRENTUSER=`whoami`
if [ "$CURRENTUSER" = "root" ]; then
  UserColor=$Red
  BUserColor=$BRed
else
  UserColor=$Green
  BUserColor=$BGreen
fi

PROMPT_START=""
PROMPT_END="\n$BUserColor\\$ $ResetColor"

SCREEN_PROMPT_PREFIX="["
SCREEN_PROMPT_SEPARATOR=":"
SCREEN_PROMPT_SUFFIX="]"
SCREEN_PROMPT_SOCKET="${Green}"
SCREEN_PROMPT_WINDOW="${Green}"
source ${BASH_PROMPT_DIR}/screen-prompt.sh

GIT_PROMPT_PREFIX=" ("
GIT_PROMPT_SUFFIX=")"
GIT_PROMPT_SEPARATOR="|"
GIT_PROMPT_BRANCH="${Magenta}"
GIT_PROMPT_STAGED="${Red}● "
GIT_PROMPT_CONFLICTS="${Red}✖ "
GIT_PROMPT_CHANGED="${Blue}✚ "
GIT_PROMPT_REMOTE=" "
GIT_PROMPT_UNTRACKED="…"
GIT_PROMPT_CLEAN="${BGreen}✔"
source ${BASH_PROMPT_DIR}/git-prompt.sh

HG_PROMPT_PREFIX=" ("
HG_PROMPT_SUFFIX=")"
HG_PROMPT_SEPARATOR="|"
HG_PROMPT_BRANCH="${Magenta}"
HG_PROMPT_MODIFIED="${Red}"
HG_PROMPT_UNKNOWN="${Yellow}"
source ${BASH_PROMPT_DIR}/hg-prompt.sh

JOB_PROMPT_PREFIX=" $Yellow&"
JOB_PROMPT_SUFFIX="$ResetColor"
source ${BASH_PROMPT_DIR}/job-prompt.sh

ERROR_PROMPT_PREFIX=" $Red?"
ERROR_PROMPT_SUFFIX="$ResetColor"
source ${BASH_PROMPT_DIR}/error-prompt.sh

function demo() {
  DEMO="$" bash
}

function setPrompt() {
  local PromptError=`formatError $?`
  local PromptTime="$IBlack$Time24$ResetColor"
  local PromptUserHost=" $BUserColor$User@$HostName$ResetColor"
  local PromptWD=" $Yellow$PathShort$ResetColor"
  local PromptScreen=`screenPrompt`
  local PromptGit=`gitPrompt`
  local PromptHg=`hgPrompt`
  local PromptJobs=`jobCount`
  PS1="$PROMPT_START$PromptTime$PromptError$PromptUserHost$PromptScreen$PromptWD$PromptGit$PromptHg$PromptJobs$PROMPT_END"
}

if [ -n "$DEMO" ]; then
  PROMPT_COMMAND=
  PS1="\$ "
else
  PROMPT_COMMAND=setPrompt
fi
export PS1
