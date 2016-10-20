#!/bin/bash

# Download Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download and install the theme
mkdir -p ~/.vim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim

echo "Now enter vim and run \"PluginInstall\""
