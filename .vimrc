" Make Vim more useful. vim, not vi
set nocompatible
" Disable filetype detection, required for Vundle
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
" Vundle bundles
Bundle 'scrooloose/nerdtree'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'rosenfeld/conque-term'
Bundle 'kien/ctrlp.vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/closetag.vim'
Bundle 'mattn/emmet-vim'
Bundle 'godlygeek/tabular'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-fugitive'
Bundle 'moll/vim-node'
Bundle 'vim-scripts/Rename'
Bundle 'scrooloose/nerdcommenter'
" Enable pathogen
call pathogen#infect()
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
"let mapleader=",""
" Optimize for fast terminal connections
set ttyfast
" Syntax highlighting
syntax enable
" Display line numbers
set number
" Width of tab set to 2
set tabstop=2
" Indents will have a width of 2
set shiftwidth=2
" Columns for a tab
set softtabstop=2
" Enable smart indent
set smarttab
set smartindent
set smartcase
"set clipboard=unnamedplus
"if $TMUX == ''
"	set clipboard+=unnamed
"endif
" Highlight cursor line
set cursorline
" Start scrolling three lines before the horizontal window border
"set scrolloff=3
" Show invisible characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list
" Highlight searches
set hlsearch
" Incremental search
set incsearch
" Show matching bracket
set showmatch
" Add the g flag to search/replace by default
set gdefault
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Disable error bells
set noerrorbells
" Show the filename in the window titlebar
set title
" Watch for filechanges
set autoread
" Centralize backup
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
" Show the (partial) command as it’s being typed
set showcmd
" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
 	let old_query = getreg('/')
 	:%s/\s\+$//e
 	call setpos('.', save_cursor)
 	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Convert tabs to whitespace
function! TabsToWhitespace()
	let save_cursor = getpos(".")
 	let old_query = getreg('/')
 	:%s/\t/  /e
 	call setpos('.', save_cursor)
 	call setreg('/', old_query)
endfunction
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>)
" Automatic commands
if has("autocmd")
	 	" Enable file type detection
 		filetype on
    " Treat .json files as .js
		autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
		autocmd BufNewFile,BufRead *.ejs setfiletype ejs syntax=html
		autocmd BufNewFile,BufRead *.jade setfiletype jade syntax=html
		autocmd BufNewFile,BufRead *.haml setfiletype haml syntax=html
		autocmd BufNewFile,BufRead *.erb setfiletype erb syntax=html
		autocmd BufNewFile,BufRead *.hbs setfiletype hbs syntax=html
		autocmd BufNewFile,BufRead *.scss setfiletype scss syntax=css
		autocmd BufNewFile,BufRead *.less setfiletype less syntax=css
endif
" Don’t add empty newlines at the end of files
set binary
set noeol
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Theme config
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1 
colorscheme solarized
" Required for NERDcommenter
filetype plugin on
" Enable indent
filetype plugin indent on
" Enable closetag
let b:closetag_html_style=1
au Filetype html,xml,xsl,ejs,jade,haml,erb source ~/.vim/plugin/closetag.vim "" ctrl-_ 
source ~/.vim/bundle/closetag.vim/plugin/closetag.vim "" ctrl-_ 
" NerdTree show hidden files
let NERDTreeShowHidden=1
" Start NERDTree if no files were specified
autocmd vimEnter * if !argc() | NERDTree | endif
" Focus on window
autocmd VimEnter * wincmd p
" TagBar key binding
nmap <F8> :TagbarToggle<CR>
" Open TagBar on JavaScript file
autocmd BufRead *.js :TagbarToggle
" Save as sudo
command W w !sudo tee % >/dev/null
" Syntastic checker
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open=1
" Mustache abbreviations
let g:mustache_abbreviations = 1
" Emmet trigger key
let g:user_emmet_leader_key='<C-Z'
" Set paste shortcut
command Setp execute "set paste"
command Setnp execute "set nopaste"
" Disable paste mode, (enabling this can affect many other things)
set nopaste
" Paste mode toggle
map <F9> :set paste<CR>
map <F10> :set nopaste<CR>
command Sws :call StripWhitespace()
command Ttw :call TabsToWhitespace()
" Treat long lines as line breaks
map j gj
map k gk
" Use spaces instead of tabs
set expandtab
" Neocomplache config
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Hold Ctr and use movement keys to move around window splits
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
" Ctr-tab to switch buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr
" Enable code folding (vim-javascript-syntax)
"au FileType javascript call JavaScriptFold()
" DelimitMate config
au FileType mail let b:delimitMate_autoclose = 0 
" Ctr-c inbetween brackets to expand (DelimitMate)
imap <C-c> <CR><Esc>O
