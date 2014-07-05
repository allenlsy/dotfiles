#!/bin/bash

yellow='\033[01;33m'
NC='\033[00;00m' # No Color

DIR=$(pwd)

# .vim
echo -e "${yellow}[ Committing .vim... ]${NC}"
cd ~/.vim
cp ~/.vimrc .
git pull --rebase
git aa
git commit -a
git push

# .oh-my-zsh
echo -e "${yellow}[ Committing .oh-my-zsh... ]${NC}"
cd ~/.oh-my-zsh
git pull --rebase
git aa
git commit -a
git push

# other dotfiles
echo -e "${yellow}[ Copying other dotfiles... ]${NC}"
cd ~
cp .gitconfig .gitignore .gvimrc .irbrc .tmux.conf .vimrc .zshrc .pryrc $DIR

cd $DIR
echo -e "${yellow}[ Committing current repo... ]${NC}"
git pull --rebase
git submodule foreach git pull origin master
git aa
git commit -a
git tf

