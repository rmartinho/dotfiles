export PATH="$BASHRC_PATH/bin:$PATH"

if [ -d $HOME/.local/bin ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d $HOME/.gem/ruby/1.8/bin ]; then
  PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
fi

