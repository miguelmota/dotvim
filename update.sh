#!/bin/bash

# Backup .dotfiles
echo "**** Backing up .dotfiles directory."
if [ -d ~/.dotfiles ]; then
  #tar -zcvf "~/dotfiles-backup-$(date +"%Y-%m-%d").tar.gz" ~/.dotfiles
  cp -rf ~/.dotfiles ~/.dotfiles.$(date +"%Y-%m-%d")
  rm -rf ~/.dotfiles
fi

# Create tmp directory
echo "**** Creating tmp directory."
[ -d ~/.tmp ] || mkdir ~/.tmp

# Clone repo
echo "**** Cloning vim config repo."
git clone https://github.com/miguelmota/vim-config.git ~/.tmp/vim-config

# Update vim config
echo "**** Updating vim config."
cp -rf ~/.tmp/vim-config/ ~/.vim
cp -f ~/.tmp/vim-config/.vimrc ~/.vimrc

# Remove tmp directory
echo "**** Removing tmp directory."
rm -rf ~/.tmp/vim-config

echo "**** Done."
