# MAY NEED THIS IN RECOVERY MODE
# csrutil disable
# reboot

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew
brew tap caskroom/cask
brew install git zsh ccat vim ctags rbenv nodejs hub redis postgresql docker tree
brew cask install iterm2 google-chrome dropbox sublime-text java  postgresql docker docker-toolbox
chsh -s /bin/zsh

# ruby
rbenv init

# dotfile
git clone --recursive https://github.com/allenlsy/dotfiles
sudo dotfile/bootstrap.sh
open .vim/PowerlineSymbols-Powerline.otf
open dotfile/extra/ProFont

# vim
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# ssh
mkdir .ssh
ssh-keygen
sudo scutil --set HostName $USERNAME-macbook
hostname
c ~/.ssh/id_rsa.pub

# sublime
git clone git@github.com:allenlsy/.sublime.git
cd ~/Library/Application\ Support/Sublime\ Text\ 3
mv Installed\ Packages Installed\ Packages\ backup
mv Packages Packages\ backup
ln -s ~/.sublime/Installed\ Packages
ln -s ~/.sublime/Packages

# coffee script
npm -g install coffee-script

