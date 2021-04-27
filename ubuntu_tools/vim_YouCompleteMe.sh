#!/bin/bash

# This is script for manually install YouCompleteMe
# plugin in ubuntu

# You can find related .vimrc file in my repository

sudo apt-get install build-essential
sudo apt-get install cmake
sudo apt-get install python-dev
sudo apt-get install python3-dev

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

# For C complete:
sudo ./install.py --clang-completer

# If you want autocomplete for other language, run the following
# sudo ./install.py --all

# After running this script , you need to run :Plugin install
# in vim in order to make the plugin work
