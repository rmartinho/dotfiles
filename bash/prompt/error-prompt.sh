function formatError() {
  [ $1 -ne 0 ] && echo "$ERROR_PROMPT_PREFIX$1$ERROR_PROMPT_SUFFIX"
}


