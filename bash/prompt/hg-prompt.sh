function hgPrompt() {
  hg prompt "{$HG_PROMPT_PREFIX$HG_PROMPT_BRANCH{branch}$ResetColor{$HG_PROMPT_SEPARATOR$HG_PROMPT_MODIFIED{status|modified}}{$HG_PROMPT_SEPARATOR$HG_PROMPT_UNKNOWN{status|unknown}}$ResetColor$HG_PROMPT_SUFFIX}" 2>/dev/null
}

