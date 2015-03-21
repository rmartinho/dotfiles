#!/bin/bash

pushd `dirname $0` >/dev/null
DOT_DIR=`pwd`
popd >/dev/null

echo Creating directories...
mkdir -p ~/.gnupg
mkdir -p ~/.ssh
mkdir -p ~/.hgext
mkdir -p ~/.local/bin
mkdir -p ~/.config

echo Creating symlinks...
ln -sf $DOT_DIR/bash/bashrc ~/.bashrc
ln -sf $DOT_DIR/ghci/ghci ~/.ghci
ln -sf $DOT_DIR/git/gitconfig ~/.gitconfig
ln -sf $DOT_DIR/git/gitignore ~/.gitignore
ln -sf $DOT_DIR/gpg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
ln -sf $DOT_DIR/gpg/gpg.conf ~/.gnupg/gpg.conf
ln -sf $DOT_DIR/hg/hgrc ~/.hgrc
ln -sf $DOT_DIR/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOT_DIR/vim/bootstrap.vim ~/.vimrc
ln -sf $DOT_DIR/vim ~/.vim
ln -sf $DOT_DIR/ssh/rc ~/.ssh/rc
ln -sf $DOT_DIR/ssh/config ~/.ssh/config
ln -sf $DOT_DIR/X/Xmodmap ~/.Xmodmap

echo Obtaining external dependencies...
git -C $DOT_DIR submodule update --init
hg clone https://bitbucket.org/sjl/hg-prompt .hgext/hg-prompt
pip install --user psutil

echo Installing vim plugins...
vim +PluginInstall +qall

echo Setting up Powerline...
ln -sf ~/.vim/bundle/powerline ~/.powerline
ln -sf $DOT_DIR/powerline ~/.config/powerline
ln -sf ~/.powerline/scripts/powerline-render ~/.local/bin/powerline-render
ln -sf ~/.powerline/scripts/powerline-config ~/.local/bin/powerline-config

echo Setup complete.

