#!/bin/bash

echo Creating directories...
mkdir -p ~/.gnupg
mkdir -p ~/.ssh
mkdir -p ~/.hgext
mkdir -p ~/.local/bin
mkdir -p ~/.config

echo Creating symlinks...
ln -sf ~/.dot/bash/bashrc ~/.bashrc
ln -sf ~/.dot/ghci/ghci ~/.ghci
ln -sf ~/.dot/git/gitconfig ~/.gitconfig
ln -sf ~/.dot/git/gitignore ~/.gitignore
ln -sf ~/.dot/gpg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
ln -sf ~/.dot/gpg/gpg.conf ~/.gnupg/gpg.conf
ln -sf ~/.dot/hg/hgrc ~/.hgrc
ln -sf ~/.dot/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dot/vim/bootstrap.vim ~/.vimrc
ln -sf ~/.dot/vim ~/.vim
ln -sf ~/.dot/ssh/rc ~/.ssh/rc
ln -sf ~/.dot/ssh/config ~/.ssh/config

echo Installing vim plugins...
vim +PluginInstall +qall

echo Obtaining external dependencies...
hg clone https://bitbucket.org/sjl/hg-prompt .hgext/hg-prompt
pip install --user psutil

echo Setting up Powerline...
ln -sf ~/.vim/bundle/powerline ~/.powerline
ln -sf ~/.dot/powerline ~/.config/powerline
ln -sf ~/.powerline/scripts/powerline-render ~/.local/bin/powerline-render
ln -sf ~/.powerline/scripts/powerline-config ~/.local/bin/powerline-config

echo Setup complete.

