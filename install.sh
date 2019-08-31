#!/usr/bin/env bash

echo "Creating backups as ~/.old-filename"

#mv ~/.bashrc ~/.old-bashrc
mv ~/.vimrc ~/.old-vimrc

echo "Installing vim color scheme"
mkdir -p ~/.vim/colors && wget --quiet https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim

echo "Symlinking from dotfiles to home directory"

#ln -s ./bashrc ~/.bashrc
#ln -s ./vimrc ~/.vimrc

#ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vimrc ~/.vimrc

echo "Adding own additions to bashrc"
echo 'alias UPDATE="sudo apt update && sudo apt upgrade"' >> ~/.bashrc

if [ -z "`which git`" ]
then
	echo "git not found, apt installing"
	sudo apt install git
fi

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Done!"
