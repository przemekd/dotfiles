#!/usr/bin/env bash

# Create config dir and copy configuration
curl -fLO ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/przemekd/dotfiles/master/neovim/.vimrc

# Download fonts
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

# Download vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
