# Vim config

My `~/.vim` and `~/.vimrc` configuration

## Bundles

- [Vundle](https://github.com/gmarik/Vundle.vim) - Plug-in manager
- [NERDtree](https://github.com/scrooloose/nerdtree) - A tree explorer
- [NERDcommenter](https://github.com/scrooloose/nerdcommenter) - Intensely orgasminc commenting
- [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder
- [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks
- [neocomplcache](https://github.com/Shougo/neocomplcache.vim) - Ultimate auto-completion system 
- [delimitMate](https://github.com/Raimondi/delimitMate) - Auto-completion for quotes, parens, brackets, etc
- [conque-term](https://github.com/rosenfeld/conque-term) - Run interative commands inside a buffer
- [emmet-vim](https://github.com/mattn/emmet-vim) - Emmet support
- [tagbar](https://github.com/majutsushi/tagbar) - Display tags ordered by class
- [closetag](https://github.com/vim-scripts/closetag.vim) - Close open HTML/XML tags
- [tabular](https://github.com/godlygeek/tabular) - Text filtering and alignment
- [rename](https://github.com/vim-scripts/Rename) - File renaming
- [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - Visually display indent levels
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git wrapper
- [tern_for_vim](https://github.com/marijnh/tern_for_vim) - [Tern](http://ternjs.net/g-based JavaScript editing support
- [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax) - Enhanced JavaScript syntax
- [vim-jade](https://github.com/digitaltoad/vim-jade) - Jade template engine syntax highlighting and indention
- [vim-mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars) - Mustache and Handlebars support
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support
- [vim-node](https://github.com/moll/vim-node) - Tools and enviroment for developing with Node.js
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - Precision colorscheme

## Required dependencies

[ctags](http://ctags.sourceforge.net/) for [ctrlp](https://github.com/kien/ctrlp.vim) plugin

```bash
brew install ctags
```

[Tern](https://github.com/marijnh/tern) for tern plugin

```
cd ~/.vim/bundle/tern_for_vim

npm install
```

## Installing bundles

Run `BundleInstall` after adding a [Vundle](https://github.com/gmarik/Vundle.vim) bundle in `.vimrc`

```bash
vim +BundleInstall
```

## Symlinks

```bash
ln -s vim-config/.vim ~/.vim
ln -s vim-config/.vim/.vimrc ~/.vimrc
```

## Key bindings

### Nerdcommenter

Hightlight text in visual mode then type <kbd>\\</kbd> <kbd>cc</kbd> to toggle comments

### Window switching

To swith windows type <kbd>Ctr</kbd>+<kbd>j</kbd>

<kbd>j</kbd> down
<kbd>k</kbd> up
<kbd>h</kbd> left
<kbd>l</kbd> right


## License

Released under the MIT License.