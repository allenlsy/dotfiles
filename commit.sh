#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

DIR=$(pwd)

# .vim
echo "Committing .vim..."
cd ~/.vim
git add .
git commit -a
git push

# .oh-my-zsh
echo "Committing .oh-my-zsh..."
cd ~/.oh-my-zsh
git add .
git commit -a
git push

# other dotfiles
echo "Committing other dotfiles..."
cd ~
cp .gitconfig .gitignore .gvimrc .irbrc .tmux.conf .vimrc .zshrc $DIR

cd $DIR
git add --all
git commit -a
git push -f

