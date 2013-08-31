# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BASH_DIR=~/.bash

for file in $BASH_DIR/*.sh; do
  source "$file"
done

# vim:set ft=sh:
