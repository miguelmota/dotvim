#!/bin/bash

DOTVIM_DIR="${DOTVIM_DIR:-$HOME/Dotfiles/dotvim}"

link_file() {
  local src="$1"
  local dest="$2"

  if [ ! -e "$src" ]; then
    echo "$src not found; skipping."
    return
  fi

  if [ -d "$dest" ] || [ -f "$dest" ] || [ -L "$dest" ]; then
    if [ -L "$dest" ]; then
      echo "$dest already exists (symlink); skipping."
    else
      read -r -p "$dest already exists and is not a symlink. Overwrite? [y/N] " confirm
      if [[ "$confirm" =~ ^[Yy]$ ]]; then
        ln -sn "$src" "$dest"
        echo "symlinked $src -> $dest"
      else
        echo "Skipping $dest."
      fi
    fi
  else
    ln -sn "$src" "$dest"
    echo "symlinked $src -> $dest"
  fi
}

link_file "$DOTVIM_DIR"        ~/.vim
link_file "$DOTVIM_DIR/vimrc"  ~/.vimrc
