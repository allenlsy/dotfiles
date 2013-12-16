#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

cp -R ~/.gitconfig ~/.gitignore ~/.gvimrc ~/.irbrc ~/.oh-my-zsh ~/.tmux.conf ~/.vim ~/.vimrc ~/.zshrc .

# remove .git
sudo rm -R .oh-my-zsh/.git

git add --all
git commit -a

git push -f

