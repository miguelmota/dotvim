#!/bin/bash

PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
PLUG_DEST="$HOME/.vim/autoload/plug.vim"

if [ ! -d "$HOME/.vim" ]; then
  echo "~/.vim does not exist. Run link_vim.sh first."
  exit 1
fi

if ! command -v curl &>/dev/null; then
  echo "curl not found; cannot install vim-plug."
  exit 1
fi

if [ -f "$PLUG_DEST" ]; then
  echo "vim-plug already installed at $PLUG_DEST; skipping."
  exit 0
fi

echo "Installing vim-plug..."
if curl -fLo "$PLUG_DEST" --create-dirs "$PLUG_URL"; then
  echo "vim-plug installed. Open vim and run :PlugInstall to install plugins."
else
  echo "Failed to download vim-plug."
  exit 1
fi
