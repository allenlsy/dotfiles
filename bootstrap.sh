#!/bin/bash
if [ "$(id -u)" != "0" ]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

if [ -f ~/.vim ]; then
        mv ~/.vim ~/.vim.bk
fi

if [ -f ~/.oh-my-zsh ]; then
        mv ~/.oh-my-zsh ~/.oh-my-zsh.bk
fi

cp -R .gitconfig .gitignore .gvimrc .irbrc .oh-my-zsh .tmux.conf .vim .vimrc .zshrc .pryrc .ctags ~

# apply tmux config
if command -v tmux 2>/dev/null; then
        tmux source ~/.tmux.conf
fi

if [ -f ~/.git ]; then
        rm -R ~/.git
fi
