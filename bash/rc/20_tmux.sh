# Do nothing if on tmux
[ -z ${TMUX} ] || return

if which tmux 2>&1 >/dev/null; then
  tmux list-sessions && exec tmux attach || exec gpg-agent --daemon tmux
fi

