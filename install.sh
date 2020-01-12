#!/bin/bash

# Backup .dotfiles
echo "**** Backing up .dotfiles directory."
if [ -d ~/.dotfiles ]; then
  #tar -zcvf "~/dotfiles-backup-$(date +"%Y-%m-%d").tar.gz" ~/.dotfiles
  cp -rf ~/.dotfiles ~/.dotfiles.$(date +"%Y-%m-%d")
  rm -rf ~/.dotfiles
fi

# Create .dotfiles directory if not exists
echo "**** Creating .dotfiles directory."
[ -d ~/.dotfiles ] || mkdir ~/.dotfiles

# Clone repo
echo "**** Cloning vim config repo."
git clone https://github.com/miguelmota/vim-config.git ~/.dotfiles/.vim

# Create backup directory
echo "**** Creating backup directory."
[ -d ~/.dotfiles/.vim/backup ] || mkdir ~/.dotfiles/.vim/backup

# Create symlinks
echo "**** Creating symbolic links."
ln -snf ~/.dotfiles/.vim ~/.vim
ln -snf ~/.dotfiles/.vim/vimrc ~/.vimrc
ln -snf ~/.dotfiles/.vim/viminfo ~/.viminfo

# Install Vundle bundle manager
if [[ ! -e ~/.vim/bundle/vundle/.git ]]; then
  echo "**** Cloning Vundle bundle."
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# Install ctags
if ! type ctags > /dev/null; then
  echo "**** Installing ctags."
  if [ "$(uname)" == "Darwin" ]; then
    brew install ctags
  fi

  if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install exuberant-ctags 
  fi

fi

# Install tern dependencies
if ! type npm > /dev/null; then
  echo "**** Installing tern dependencies."
  echo "** Installing nodejs."
  if [ "$(uname)" == "Darwin" ]; then
    brew install nodejs
  fi

  if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install nodejs
    echo "** Installing npm."
    sudo apt-get install npm
  fi
fi

# Install bundles
echo "**** Installing bundles (this may take a while)."
#vim +BundleInstall +qall 2&> /dev/null
vim +BundleInstall 

# Install term
echo "**** Installing tern."
npm config set registry http://registry.npmjs.org/
cd ~/.vim/bundle/tern_for_vim
npm install

echo "**** Done."
exit 0;
