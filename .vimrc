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
"Bundle 'jelera/vim-javascript-syntax'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neocomplete.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'rosenfeld/conque-term'
Bundle 'kien/ctrlp.vim'
Bundle 'mustache/vim-mustache-handlebars'
"Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/closetag.vim'
Bundle 'mattn/emmet-vim'
Bundle 'godlygeek/tabular'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-fugitive'
Bundle 'moll/vim-node'
"Bundle 'vim-scripts/Rename'
Bundle 'scrooloose/nerdcommenter'
Bundle 'othree/html5.vim'
Bundle 'msanders/snipmate.vim'
"Bundle 'mklabs/vim-backbone'
"Bundle 'tpope/vim-pathogen'
"Bundle 'Yggdroot/indentLine'
Bundle 'sukima/xmledit'
 Bundle 'tmhedberg/matchit'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-surround'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'jeetsukumaran/vim-buffergator'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'heartsentwined/vim-emblem'
Bundle 'vim-scripts/SyntaxRange'
Bundle 'kovisoft/slimv'
Bundle 'adimit/prolog.vim'
Bundle 'benmills/vimux'
Bundle 'wellle/tmux-complete.vim'
Bundle 'tpope/vim-obsession'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'valloric/MatchTagAlways'
Bundle 'derekwyatt/vim-scala'
Bundle 'derekwyatt/vim-sbt'
Bundle 'mhinz/vim-startify'
Bundle 'osyo-manga/vim-over'
Bundle 'mileszs/ack.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
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
" Width of tab set to 2 spaces.
" 4 spaces will equal 1 tab (generally speaking, 8 spaces equal 1 tab)
set tabstop=2
" Indents will have a width of 2
set shiftwidth=2
" Columns for a tab, amount of whitespace.
" softtabstop = shiftwidth = tabstop
set softtabstop=2
" Enable smart indent
set smarttab
set smartindent
set smartcase
" Copy to clipboard
"set clipboard=unnamedplus
set clipboard=unnamed
"if $TMUX == ''
"	set clipboard+=unnamed
"endif
" Start scrolling three lines before the horizontal window border
"set scrolloff=3
" Show invisible characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" List characters
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
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
au BufReadPost *.em set syntax=jade
au BufReadPost *.emblem set syntax=jade
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
"set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
"colorscheme solarized
"colorscheme mirodark
colorscheme Tomorrow-Night-Bright
" Highlight cursor line
set cursorline
"hi CursorLine term=bold cterm=bold ctermbg=0 guibg=Grey40
" Required for NERDcommenter
filetype plugin on
" Enable indent
filetype plugin indent on
filetype indent on
" Ctrl-P options
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_reuse_window = 'startify'
map <Leader>fs :CtrlPTag<CR>
map <Leader>fd :CtrlPCurFile<CR>
map <Leader>fb :CtrlPBuffer<CR>
nnoremap <Leader>ff :CtrlP<CR>
" Enable closetag
let b:closetag_html_style=1
au Filetype html,xml,xsl,ejs,jade,emblem,haml,erb source ~/.vim/bundle/closetag.vim/plugin/closetag.vim "" ctrl-_
source ~/.vim/bundle/closetag.vim/plugin/closetag.vim "" ctrl-_
" Ack shortcut
map <Leader>a :Ack!<space>
" NerdTree show hidden files
let NERDTreeShowHidden=1
" Start NERDTree if no files were specified
autocmd vimEnter * if !argc() | NERDTree | endif
" Focus on window
autocmd VimEnter * wincmd p
" TagBar key binding
nmap <F8> :TagbarToggle<CR>
" Open TagBar on JavaScript file
" autocmd BufRead *.js :TagbarToggle
" Save as sudo
"command W w !sudo tee % >/dev/null
" Reload ~/.vimrc with \ + rv
map <Leader>rv :source $MYVIMRC<CR>
" Syntastic checker
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
" Mustache abbreviations
let g:mustache_abbreviations = 1
" Emmet trigger key ie. Ctrl+y+,
let g:user_emmet_leader_key='<C-Y>'
" Disable paste mode, (enabling this can affect many other things)
set nopaste
" Paste mode toggle
map <F9> :set invpaste paste?<CR>
" List mode toggle
map <F10> :set invlist list?<CR>
" \ + ss to strip whitespace
map <Leader>ss :call StripWhitespace()<CR>
" \ + ts to convert tabs to whitespace
map <Leader>ts :call TabsToWhitespace()<CR>
" \ + ct to open ConqueTerm
map <Leader>ct :tabe <bar> ConqueTerm bash<CR>
" Treat long lines as line breaks
map j gj
map k gk
" Use spaces instead of tabs
set expandtab
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
map <C-S-Tab> :bprevious<cr>
" Enable code folding (vim-javascript-syntax)
"au FileType javascript call JavaScriptFold()
" DelimitMate config
au FileType mail let b:delimitMate_autoclose = 0
" Ctr-c inbetween brackets to expand (DelimitMate)
imap <C-c> <CR><Esc>O
" SnipMate snippets
let g:snippets_dir = "~/.vim/snippets"
"let g:snips_trigger_key = '<C-\>'

" Neocomplache config
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 0
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Tern keys
let g:tern_map_keys=1
" Open file in new tab
let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': [],
            \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
            \ }
" Indent colors"
let g:indentLine_color_term = 239
" Ignore case toggle
set ic
nmap <F6> :set ignorecase! ignorecase?
" EasyMotion config
let g:EasyMotion_leader_key = '<Leader>'
" Airline config
let g:airline#extensions#tabline#enabled = 1
" NerdTree shortcut
map <Leader>d :NERDTreeToggle<CR>
nmap <Leader>nt :NERDTreeFind<CR>
" opening a new file when the current buffer has unsaved changes causes files
" to be hidden instead of closed
set hidden
" miniBuffExplorer config
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
map <Leader>e :MBEToggle<cr>
" Easy window resizing
"map <C-]> 5<C-w>>
"map <C-[> 5<C-w><
"map <C-m> 3<C-w>+
"map <C-n> 3<C-w>-
" YouCompleteMe config
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_show_diagnostics_ui = 1
"let g:ycm_complete_in_comments = 1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Powerline config
"set rtp+=~/.powerline/powerline/bindings/vim
" Always show statusline
set laststatus=2
" Use 256 colours
set t_Co=256
" Use powerline fonts
let g:airline_powerline_fonts = 1
" Fix timeout when pressing escape key
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
" Shortcut to align indents
map <F12> mzgg=G`z :call StripWhitespace()<CR>
" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
set wrap
set linebreak
" Note trailing space at end of next line
set showbreak=>\ \ \
" Load Slimv
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\""'
set guioptions+=m
" Matching parentheses have same color
let g:lisp_rainbow=1
" Vimux npm test
map <leader>nt :call VimuxRunCommand("clear; npm test")<CR>
" Vimux Prompt
map <leader>x :VimuxPromptCommand<CR>
" Substitution preview
function! VisualFindAndReplace()
    :OverCommandLine%s/
    :w
endfunction
function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
    :w
endfunction
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>
" Incremental numbers
function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>
" Tabular config
xnoremap <Leader>a= :Tabularize /=<CR>
xnoremap <Leader>a: :Tabularize /:<CR>
xnoremap <Leader>a:: :Tabularize /:\zs<CR>
xnoremap <Leader>a, :Tabularize /,<CR>
xnoremap <Leader>a<Bar> :Tabularize /<Bar><CR>
" Clear highlights
map <Leader>c :noh<CR>