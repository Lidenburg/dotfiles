#!/usr/bin/env bash

echo "Creating backups as ~/.old-filename"

mv ~/.bashrc ~/.old-bashrc
mv ~/.vimrc ~/.old-vimrc

echo "Symlinking from dotfiles to home directory"

ln -s ./bashrc ~/.bashrc
ln -s ./vimrc ~/.vimrc

echo "Done!"
