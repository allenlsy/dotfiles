#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

cp -R ~/.vim ~/.oh-my-zsh ~/.vimrc ~/.zshrc ~/.git* ~/.gvimrc ~/.irbrc ~/.tmux.conf .

# remove .git
sudo rm -R .oh-my-zsh/.git

git add --all
git commit -a

git push -f

