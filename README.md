# Vim config

My `~/.vim` and `~/.vimrc` configuration.

Mainly focused on JavaScript development.

## Bundles

(List not always up-to-date)

- [Vundle](https://github.com/gmarik/Vundle.vim) - Plug-in manager
- [NERDtree](https://github.com/scrooloose/nerdtree) - A tree explorer
- [NERDcommenter](https://github.com/scrooloose/nerdcommenter) - Intensely orgasminc commenting
- [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder
- [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks
- [neocomplete](https://github.com/Shougo/neocomplete.vim) - Next generation completion framework
- [delimitMate](https://github.com/Raimondi/delimitMate) - Auto-completion for quotes, parens, brackets, etc
- [conque-term](https://github.com/rosenfeld/conque-term) - Run interative commands inside a buffer
- [emmet](https://github.com/mattn/emmet-vim) - Emmet support
- [snipmate](https://github.com/msanders/snipmate.vim) - Snippets
- [tagbar](https://github.com/majutsushi/tagbar) - Display tags ordered by class
- [closetag](https://github.com/vim-scripts/closetag.vim) - Close open HTML/XML tags
- [tabular](https://github.com/godlygeek/tabular) - Text filtering and alignment
- [rename](https://github.com/vim-scripts/Rename) - File renaming
- [indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - Visually display indent levels
- [fugitive](https://github.com/tpope/vim-fugitive) - Git wrapper
- [html5](https://github.com/othree/html5.vim) - HTML5 omnicomplete and syntax
- [tern](https://github.com/marijnh/tern_for_vim) - [Tern](http://ternjs.net/g-based) JavaScript editing support
- [javascript-syntax](https://github.com/jelera/vim-javascript-syntax) - Enhanced JavaScript syntax
- [jade](https://github.com/digitaltoad/vim-jade) - Jade template engine syntax highlighting and indention
- [mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars) - Mustache and Handlebars support
- [coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support
- [node](https://github.com/moll/vim-node) - Tools and enviroment for developing with Node.js
- [backbone](https://github.com/mklabs/vim-backbone) - Utilities for Backbone
- [colors-solarized](https://github.com/altercation/vim-colors-solarized) - Precision colorscheme
- [indentLine](https://github.com/Yggdroot/indentLine) - Display indentation levels
- [matchit](https://github.com/vim-scripts/matchit.zip) - Extended % matching
- [easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed
- [surround](https://github.com/tpope/vim-surround) - Quoting/parenthesizing made simple
- [airline](https://github.com/bling/vim-airline) - Lean & mean status/tabline
- [buffergator](https://github.com/jeetsukumaran/vim-buffergator) - Select and switch between buffers
- [minibu](https://github.com/fholgado/minibufexpl.vim) - Elegant buffer explorer


### References

Below are references for shortcuts and key bindings (to help me remember).

ctrlp Search/open files:

`Ctrl+p`

```
horizonal split
<c-x>

vertical split
<c-v>
```

ctrlp shortcuts

[source](https://github.com/kien/ctrlp.vim)

Turn off search highlight

```
:noh
```

```bash
Press <F5> to purge the cache for the current directory to get new files.
Press <c-f> and <c-b> to cycle between modes.
Press <c-d> to switch to filename only search instead of full path.
Press <c-r> to switch to regexp mode.
Use <c-j>, <c-k> or the arrow keys to navigate the result list.
Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
Use <c-y> to create a new file and its parent directories.
Use <c-z> to mark/unmark multiple files and <c-o> to open them.
```

Toggle NERDTree:

`\ n`

Comment toggle:

Hightlight text in visual mode then type `\ cc`

`\ cl|cb` - aligned to left
`\ cm` - multiline
`\ cs` - sexily

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

\ ts`
Reload vimrc:

`\ rv`

dit #delete everything in tag
vit
cit # change insidej tag
yit

Eady Motion:

`\ \ w`

Buffer shortcuts

```
:ls - list buffers
:buffer <num>
:bn
:bp
```

Buffergator toggle panel:

`\ b`

Buffergator shortcuts:

```bash
<C-V> Open in vertical split
<C-S> Open in horizontal split
<C-T> Open in tab
Use `[b` (or <M-b>) and `]b` (or <M-S-b>) to flip through the most-recently
Use `<Leader><LEFT>`, `<Leader><UP>`, `<Leader><RIGHT>`, `<Leader><DOWN>` to
```

Mini Buffer Explorer

toggle panel

`\ e`

Switch to buffer

```bash
 number<C-^>
 ```

Recording

```
q<letter> Start recording
q Stop recording
@<letter> Replay recording
```

vim-node open required module file

`gf` on `require('.')` to open ./index.js`

ConqueTerm

run iteractive prompt

```
:ConqueTerm bash
```

Git

Common commands

```
:Gstatus
:Gdiff :0
:Gdiff [revision]
:Gdiff ~3
:Gblame
:Glog
:Gcommit -m "message"
:Gremove
```

Vim over (substitution preview)

```
:OverCommandLine

" shortcut"
\ fr
```

Vim obsession

```
:mksession
:source Session.vim
```

Vimux

```
\ x # prompt command
\ nt # npm test
```

Tmux complete

```
C-x C-u  # autcomplete
```

Multiple Cursors

```
C-n in Normal Mode
C-n again to select next occurance
v to go into Visual Mode after selections

C-p in Visual Mode go back to previous cursor location
C-x skip current location

:'<,'>MultipleCursorsFind <regex>
```

Number toggle

```
<ctrl-n>
```

Syntastic

```
# toggle lint error list
:lopen
:lclose
```

##### Indentation

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

Ack

```bash
:Ack -i 'util' -H 'app/'
```

##### Tern commands

[source](https://github.com/marijnh/tern_for_vim)

```bash
TernDef: Jump to the definition of the thing under the cursor.
TernDoc: Look up the documentation of something.
TernType: Find the type of the thing under the cursor.
TernRefs: Show all references to the variable or property under the cursor.
TernRename: Rename the variable under the cursor.

<Leader> td	:TernDoc	Documentation under cursor
<Leader> tb	:TernDocBrowse	Browse documentation
<Leader> tt	:TernType	Type hints
<Leader> td	:TernDef	Jump to definition (yes, 'td' is duplicated)
<Leader> tpd	:TernDefPreview	Jump to definition inside preview
<Leader> tsd	:TernDefSplit	Definition in new split
<Leader> ttd	:TernDefTab	Definition in new tab
<Leader> tr	:TernRefs	All references under cursor
<Leader> tR	:TernRename	Rename variable
```

##### Lisp Swank server

```
# start server
:call SlimvConnectSwank()

# in source file, white over text do the following to:
,d to eval defun
,e to eval current expression
,h hyperspec
,s to describe symbol
,g set package
,W wrap in pair of parens
,O split
,J join
,> move paren right
,< move paren left
,o some perf stuff
,I remove line but
,D compile defun
,F compile file
,L compile and load
```


## Install

(Adjust accordingly)

```bash
# Create dotfiles directory
mkdir ~/.dotfiles

# Clone repo
git clone https://github.com/miguelmota/vim-config.git ~/.dotfiles/.vim

# Create backup directory
mkdir -p ~/.vim/backup

# Create symlinks
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vim/.vimrc ~/.vimrc

# Install Vundle bundle manager
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install bundles (ignore errors about uninstalled bundles)
vim +BundleInstall +qall
```

Vundle commands

```bash
# Install bundles
vim +BundleInstall +qall

# Remove bundles
vim +BundleClean

# Update bundles
vim +BundleUpdate
```

## Required dependencies

lua

```bash
brew install vim --with-lua
```

[ctags](http://ctags.sourceforge.net/) for [ctrlp](https://github.com/kien/ctrlp.vim) and [tagbar](https://github.com/majutsushi/tagbar) plugins

```bash
# Mac OSX
brew install ctags

# Ubuntu
sudo apt-get install exuberant-ctags
```

[Tern](https://github.com/marijnh/tern) for [tern](https://github.com/marijnh/tern_for_vim) plugin

Make sure to have [Node.js](http://nodejs.org/) and [npm](https://www.npmjs.org/) installed first

```
cd ~/.vim/bundle/tern_for_vim

npm install
```

YouCompleteMe completers

```bash
cd ~/.vim/bundles/YouCompleteMe

git submodule update --init --recursive

./install.sh --clang-completer --tern-completer
```

Powerline

[Powerline Installation instructions](http://powerline.readthedocs.org/en/latest/installation/osx.html)

All done.

## Installing bundles

Run `BundleInstall` after adding a [Vundle](https://github.com/gmarik/Vundle.vim) bundle in `.vimrc`

## Updating

```bash
wget https://raw.github.com/miguelmota/vim-config/master/update.sh -O - | bash
```

## License

Released under the MIT License.