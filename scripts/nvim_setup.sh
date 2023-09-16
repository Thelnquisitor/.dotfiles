#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade

# Install prerequisite tools
sudo apt install unzip
sudp apt install npm
sudo apt install curl

# Pull nvim 0.9.2 release and install
wget https://github.com/neovim/neovim/releases/download/v0.9.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo ln -s ~/nvim-linux64/bin/nvim /usr/bin
rm nvim-linux64.tar.gz

# Pull down neovim plugin manager (Packer)
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Telescope dependency
sudo apt install ripgrep

# Install language compilers
sudo apt install clang
sudo apt install golang

# Tmux dependencies
sudo apt install libevent-dev
sudo apt install pkg-config
sudo apt install ncurses-dev

# Pull tmux 3.3a and install
wget https://github.com/tmux/tmux/releases/download/3.3a/tmux-3.3a.tar.gz
tar -xzvf tmux-3.3a.tar.gz
cd tmux-3.3a
./configure
make && sudo make install
cd
rm tmux-3.3a.tar.gz
