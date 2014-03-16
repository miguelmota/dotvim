# Vim config

My `~/.vim` and `~/.vimrc` configuration.

Mainly focused on JavaScript development.

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
- [snipmate](https://github.com/msanders/snipmate.vim) - Snippets
- [tagbar](https://github.com/majutsushi/tagbar) - Display tags ordered by class
- [closetag](https://github.com/vim-scripts/closetag.vim) - Close open HTML/XML tags
- [tabular](https://github.com/godlygeek/tabular) - Text filtering and alignment
- [rename](https://github.com/vim-scripts/Rename) - File renaming
- [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - Visually display indent levels
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git wrapper
- [html5](https://github.com/othree/html5.vim) - HTML5 omnicomplete and syntax
- [tern_for_vim](https://github.com/marijnh/tern_for_vim) - [Tern](http://ternjs.net/g-based) JavaScript editing support
- [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax) - Enhanced JavaScript syntax
- [vim-jade](https://github.com/digitaltoad/vim-jade) - Jade template engine syntax highlighting and indention
- [vim-mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars) - Mustache and Handlebars support
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support
- [vim-node](https://github.com/moll/vim-node) - Tools and enviroment for developing with Node.js
- [vim-backbone](https://github.com/mklabs/vim-backbone) - Utilities for Backbone
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - Precision colorscheme

### Key bindings

Search/open files:

`Ctrl+p`

Comment toggle:

Hightlight text in visual mode then type `\ cc`

Close tag:

`Ctr + Shift + _`

Window switching:

`Ctr + <movement key>`

Paste mode toggle:

`F9`

List mode toggle:

`F10`

Strip whitespace:

`\ ss`

Tabs to whitespace:

`\ ts`

Reload vimrc:

`\ rv`

### Indentation

Vim defaults ([source](http://stackoverflow.com/questions/235839/how-do-i-indent-multiple-lines-quickly-in-vi))

```bash
>>   Indent line by shiftwidth spaces
<<   De-indent line by shiftwidth spaces
5>>  Indent 5 lines
5==  Re-indent 5 lines

>%   Increase indent of a braced or bracketed block (place cursor on brace first)
=%   Reindent a braced or bracketed block (cursor on brace)
<%   Decrease indent of a braced or bracketed block (cursor on brace)
]p   Paste text, aligning indentation with surroundings

=i{  Re-indent the "inner block", i.e. the contents of the block
=a{  Re-indent "a block", i.e. block and containing braces
=2a{ Re-indent "2 blocks", i.e. this block and containing block

>i{  Increase inner block indent
<i{  Decrease inner block indent
```

## Install

```bash
# Create dotfiles directory
mkdir ~/.dotfiles

# Clone and move
git clone https://github.com/miguelmota/vim-config.git
mv vim-config ~/.dotfiles/.vim

# Create backup directory
mkdir -p ~/.vim/backup

# Create symlinks
ln -sf ~/.dotfiles/.vim ~/.vim
ln -sf ~/.dotfiles/.vim/.vimrc ~/.vimrc

# Install vundle bundle manager
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install bundles (ignore errors about uninstalled bundles)
vim +BundleInstall
```

## Required dependencies

[ctags](http://ctags.sourceforge.net/) for [ctrlp](https://github.com/kien/ctrlp.vim) and [tagbar](https://github.com/majutsushi/tagbar) plugins

Mac OSX instal

```bash
brew install ctags
```

Ubuntu install

```bash
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -xvf ctags-5.8.tar.gz
cd ctags-5.8
sudo ./configure
sudo make
sudo make install
```

[Tern](https://github.com/marijnh/tern) for [tern](https://github.com/marijnh/tern_for_vim) plugin

Make sure to have [Node.js](http://nodejs.org/) and [npm](https://www.npmjs.org/) installed first

```
cd ~/.vim/bundle/tern_for_vim

npm install
```

All done.

## Installing bundles

Run `BundleInstall` after adding a [Vundle](https://github.com/gmarik/Vundle.vim) bundle in `.vimrc`


## License

Released under the MIT License.