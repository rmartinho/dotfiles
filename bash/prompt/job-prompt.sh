function jobCount() {
  local count=`jobs | wc -l | awk '{print $1}'`
  [ $count -ne 0 ] && echo "$JOB_PROMPT_PREFIX$count$JOB_PROMPT_SUFFIX"
}
