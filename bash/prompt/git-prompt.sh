function update_current_git_vars() {
  unset __CURRENT_GIT_STATUS
  local gitstatus="${BASH_PROMPT_DIR}/gitstatus.py"
    
  _GIT_STATUS=$(python $gitstatus)
  __CURRENT_GIT_STATUS=($_GIT_STATUS)
  GIT_BRANCH=${__CURRENT_GIT_STATUS[0]}
  GIT_REMOTE=${__CURRENT_GIT_STATUS[1]}
    if [[ "." == "$GIT_REMOTE" ]]; then
    unset GIT_REMOTE
  fi
  GIT_STAGED=${__CURRENT_GIT_STATUS[2]}
  GIT_CONFLICTS=${__CURRENT_GIT_STATUS[3]}
  GIT_CHANGED=${__CURRENT_GIT_STATUS[4]}
  GIT_UNTRACKED=${__CURRENT_GIT_STATUS[5]}
  GIT_CLEAN=${__CURRENT_GIT_STATUS[6]}
}

function gitPrompt() {
  update_current_git_vars

  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS="$GIT_PROMPT_BRANCH$GIT_BRANCH$ResetColor"

    if [ -n "$GIT_REMOTE" ]; then
      STATUS="$STATUS$GIT_PROMPT_REMOTE$GIT_REMOTE$ResetColor"
    fi

    STATUS="$STATUS$GIT_PROMPT_SEPARATOR"
    if [ "$GIT_STAGED" -ne "0" ]; then
      STATUS="$STATUS$GIT_PROMPT_STAGED$GIT_STAGED$ResetColor"
    fi

    if [ "$GIT_CONFLICTS" -ne "0" ]; then
      STATUS="$STATUS$GIT_PROMPT_CONFLICTS$GIT_CONFLICTS$ResetColor"
    fi
    if [ "$GIT_CHANGED" -ne "0" ]; then
      STATUS="$STATUS$GIT_PROMPT_CHANGED$GIT_CHANGED$ResetColor"
    fi
    if [ "$GIT_UNTRACKED" -ne "0" ]; then
      STATUS="$STATUS$GIT_PROMPT_UNTRACKED$GIT_UNTRACKED$ResetColor"
    fi
    if [ "$GIT_CLEAN" -eq "1" ]; then
      STATUS="$STATUS$GIT_PROMPT_CLEAN"
    fi
    STATUS="$STATUS$ResetColor"

    echo "$GIT_PROMPT_PREFIX$STATUS$GIT_PROMPT_SUFFIX"
  fi
}

