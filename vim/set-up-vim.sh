#!/usr/bin/env bash

cd ~/
mkdir -p ./.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/przemekd/dotfiles/master/vim/.vimrc
vim +PluginInstall +qall
