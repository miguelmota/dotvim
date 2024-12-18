" Make Vim more useful. vim, not vi
set nocompatible

" Disable filetype detection, required for Vundle
filetype off

" Enable indentation
filetype indent on

" === BUNDLES ===

" Set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" Let Vundle manage Vundle, required
"Plug 'VundleVim/Vundle.vim'

" Initiate Plug bundles
call plug#begin('~/.vim/bundle')

" List of bundles
"Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'
"Plug 'marijnh/tern_for_vim'
"Plug 'scrooloose/syntastic'
" delimitMate provides automatic closing of quotes and parenthesis
Plug 'Raimondi/delimitMate'
"Plug 'moll/vim-node'
"Plug 'othree/html5.vim'
"Plug 'sukima/xmledit'
"Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
"Plug 'jeetsukumaran/vim-buffergator'
Plug 'editorconfig/editorconfig-vim'
"Plug 'benmills/vimux'
"Plug 'wellle/tmux-complete.vim'
"Plug 'tpope/vim-obsession'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'osyo-manga/vim-over'
" NOTE: ack.vim requires `ack` command
" Plug 'mileszs/ack.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'duganchen/vim-soy'
Plug 'tomlion/vim-solidity'
"Plug 'leafgarland/typescript-vim'
" tsuquyomi is a typescript plugin
"Plug 'Quramy/tsuquyomi'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
" .tsx .jsx syntax highlighting
"Plug 'peitalin/vim-jsx-typescript'
" NOTE: yet another typescript plugin
"Plug 'HerringtonDarkholme/yats.vim'
" Plug 'vimwiki/vimwiki'
" Plug 'wakatime/vim-wakatime'
" NOTE: requires vim to be compiled with python3
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'chemzqm/vim-jsx-improve'
"Plug 'szw/vim-maximizer'
"Plug 'Konfekt/FastFold'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"Plug 'rust-lang/rust.vim'
"Plug 'mtth/scratch.vim'
"Plug 'junegunn/vim-peekaboo'
"Plug 'vim-scripts/a.vim'
"Plug 'Rip-Rip/clang_complete'
Plug 'tpope/vim-commentary'
"Plug 'cespare/vim-toml'
"Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'ajh17/VimCompletesMe'
" NOTE: completor.vim requires vim to be compiled with python3
" Plug 'maralla/completor.vim'
" Make sure to enable "runtimepath" in "YouCompleteMe options" below
" Plug 'Valloric/YouCompleteMe'
" Make sure to run `:CocInstall coc-json coc-tsserver` afterwards
" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" NOTE: build from source code by using yarn. Run `:CocUpdate` to update
" plugins
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Plug 'miguelmota/cairo.vim'
"Plug '~/Sandbox/cairo.vim'
" NOTE: airline is disabled because it makes window switching slower
"Plug 'bling/vim-airline'
" NOTE: disabled plugins below
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'tpope/vim-vinegar'
"Plug 'kien/ctrlp.vim'
"Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'vim-scripts/SyntaxRange'
"Plug 'kovisoft/slimv'
"Plug 'adimit/prolog.vim'
"Plug 'valloric/MatchTagAlways'
"Plug 'derekwyatt/vim-scala'
"Plug 'derekwyatt/vim-sbt'
"Plug 'elzr/vim-json'
"Plug 'msanders/snipmate.vim'
"Plug 'mklabs/vim-backbone'
"Plug 'tpope/vim-pathogen'
"Plug 'Yggdroot/indentLine'
"Plug 'Lokaltog/vim-easymotion'
"Plug 'fholgado/minibufexpl.vim'
"Plug 'rosenfeld/conque-term'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'Shougo/neocomplcache.vim'
"Plug 'Shougo/neocomplete.vim'
"Plug 'mustache/vim-mustache-handlebars'
"Plug 'majutsushi/tagbar'
Plug 'alvan/closetag.vim'
"Plug 'mattn/emmet-vim'
"Plug 'godlygeek/tabular'
"Plug 'altercation/vim-colors-solarized'
"Plug 'kchmck/vim-coffee-script'
"Plug 'digitaltoad/vim-jade'
"Plug 'vim-scripts/Rename'
"Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
" NOTE: vim-rhubarb required for vim-fugitive :GBrowse
Plug 'tpope/vim-rhubarb'
"Plug 'airblade/vim-gitgutter'
"Plug 'plasticboy/vim-markdown'
" polyglot causes terrible lag
"Plug 'sheerun/vim-polyglot'
" Deoplete install
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" NOTE: use this fork for go1.11+
"Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/bundle/gocode/vim/symlink.sh' }
" NOTE: this is disabled because it doesn't support go1.11+
"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/bundle/gocode/vim/symlink.sh' }
"Plug 'Galooshi/vim-import-js'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
"Plug 'jason0x43/vim-js-indent'
"Plug 'Shougo/unite.vim'
"Plug 'mhartington/vim-typings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'hwayne/tla.vim'
"Plug 'jpalardy/vim-slime'
"Plug 'vim-scripts/paredit.vim'
"Plug 'venantius/vim-cljfmt'
" NOTE: this is a clojurescript plugin
Plug 'tpope/vim-fireplace'
" NOTE: Use alt+squarebracket for next suggestion
Plug 'github/copilot.vim'
Plug 'tpope/vim-abolish'

" ---

" ChatGPT (:AI command) https://github.com/madox2/vim-ai
"Plug 'madox2/vim-ai'

" ChatGPT (:Chat command) https://github.com/dpayne/CodeGPT.nvim
"Plug 'dpayne/CodeGPT.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" ChatGPT (:ChatGPT command) https://github.com/jackMort/ChatGPT.nvim
"Plug 'jackMort/ChatGPT.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'MunifTanjim/nui.nvim'
"Plug 'nvim-lua/plenary.nvim'

" ---

"endif

" Plug end
call plug#end()

"lua << EOF
"  require("chatgpt").setup()
"EOF

" Vundle end
"call vundle#end()

" Enable pathogen
" call pathogen#infect()

" === BASE OPTIONS ===

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
" Note: this option doesn't work with neovim
" set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Change mapleader
"let mapleader=",""

" Optimize for fast terminal connections
set ttyfast

" Cap syntax highlighting (keep this low for better performance)
set synmaxcol=200

" Display line numbers
set number

" Don't use relative numbers
set norelativenumber

" Width of tab set to 2 spaces.
" 4 spaces will equal 1 tab (generally speaking, 8 spaces equal 1 tab)
set tabstop=2

" Indents will have a width of 2
set shiftwidth=2

" Columns for a tab, amount of whitespace.
" softtabstop = shiftwidth = tabstop
set softtabstop=2

" indents to next multiple of 'shiftwidth'
set shiftround

" Enable smart indent
set smarttab
set smartindent
set autoindent
set smartcase

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

" Show as much as possible of the last line.
set display=lastline

" Always show status line
set laststatus=2

" Show last modified indicator on bottom statusline
" https://stackoverflow.com/a/19614688/1439168
" set statusline=[%n]\ %<%f%h%m

" Open new windows below the current window
set splitbelow

" Open new windows right of the current window
set splitright

" Enable mouse in all modes
set mouse=a

" Show the cursor position
set ruler

" Show the current mode
set showmode

" Disable error bells
set noerrorbells

" Hide filename in the window titlebar because
" it overlaps first line in certain terminals.
set notitle

" Watch for filechanges
set autoread

" Disable swap files
set noswapfile

" Show the (partial) command as it’s being typed
set showcmd

" Don’t add empty newlines at the end of files
set binary
set noeol

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Highlight cursor line
" NOTE: disabled because it makes certain things slower
"set cursorline

" Disable cursorline to make vim faster
set nocursorline
set nocursorcolumn

" Set max column size for performance reasons
"set scrolljump=5

" Enable lazy redraw for performance reasons
set lazyredraw

" Fixes syntax highlighting for big files
set redrawtime=10000

" Indent as folding method
set foldmethod=indent

" Open all folds by default. 0 = all folded
set foldlevel=99

" Use older version regex engine for speed improvements
" NOTE: might need to disable this for some versions of vim,
" otherwise vim will freeze.
"set re=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Over column length marker
set colorcolumn=80

" Disable paste mode, (enabling this can affect many other things)
set nopaste

" Use spaces instead of tabs
set expandtab

" Opening a new file when the current buffer has unsaved changes causes
" files to be hidden instead of closed
set hidden

" Enable text wrapping
set wrap

" Searches wrap around end-of-file
set wrapscan

" Always report changed lines
set report=0

" Enable line breaks
set linebreak

" Disable auto-breaking of lines text wrapping
set textwidth=0
set wrapmargin=0
set formatoptions-=t

" Enable noting of trailing space at end of next line
set showbreak=>\ \ \

" Give more space for displaying messages.
set cmdheight=2

" Ignore case toggle
set ic

" Use 256 colours
set t_Co=256

" Theme options
" NOTE: disable to allow translucent background (will make error background
" color white though)
set background=dark
"set background=light

" Dictionary words
" set dictionary+=/usr/share/dict/words

" Centralize backup
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap/
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
set viminfo='100,n$HOME/.vim/files/info/viminfo

" Overrules color settings with the defaults for syntax highlighting.
" if vim freezes, disable syntax highligting.
syntax on

" Improve syntax highlighting performance
syntax sync minlines=256

" Enable syntax highlighting if syntax_on option doesn't exist
"if !exists("g:syntax_on")
    " Switches on syntax highlighting, keeping current color settings
    " However, it does makes vim slower
"    syntax enable
"else
"endif

" Grey color for column marker
"hi ColorColumn ctermbg=235 guibg=#2c2d27
" Deep pink color for colum marker
"hi ColorColumn ctermbg=53 guibg=#5f005f
" Green color for colum marker
"ColorColumn ctermbg=Green

" Bottom bar color
"hi statusline guibg=White ctermfg=8 guifg=OrangeRed4 ctermbg=15

" Transparent background (do not use for light themes)
"hi Normal ctermbg=none
"hi nonText ctermbg=none

" Cursorline styling
"hi CursorLine term=bold cterm=bold ctermbg=0 guibg=Grey40

" highlight text red that goes past max column
"hi ColorColumn ctermbg=NONE
"hi ColorColumn ctermbg=NONE ctermfg=red
"hi Bang ctermfg=red guifg=red
"match Bang /\%>80v.*/

"if has('multi_byte') && &encoding ==# 'utf-8'
"  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
"else
"  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
"endif

" Remove trailing whitespace on save
if has("autocmd")
  augroup aug_bufpre
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup END
endif

" Make nvim backward compatible with vim
if !has('nvim')
  set ttymouse=xterm2
endif

" Copy to clipboard
if has("unix")
  let s:uname = system("uname -s")
  if s:uname =~ "Darwin"
    " Mac OSX
    set clipboard=unnamed
  else
    " Linux
    set clipboard=unnamedplus
  endif
endif

" Tmux copy to clipboard
"if $TMUX == ''
"	set clipboard+=unnamed
"endif

" Turn off recording
map q <Nop>

" Disable vim's autoincrement
"map <C-a> <Nop>

" Disable vim's autodecrement
"map <C-x> <Nop>

"nmap <F6> :set ignorecase! ignorecase?

" Focus on window
if has("autocmd")
  augroup aug_winfocus
      autocmd!
      autocmd VimEnter * wincmd p
  augroup END
endif

" C++ autocomplete
" MacOS path
" TODO: Linux paths
"let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
"if isdirectory(s:clang_library_path)
"    let g:clang_library_path=s:clang_library_path
"endif

" == FUNCTIONS ===

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

" strip ^M character at end of lines
function! StripM()
    :%s/\r//g
endfunction

" Incremental numbers
"function! Incr()
""    let a = line('.') - line("'<")
""    let c = virtcol("'<")
""    if a > 0
"        execute 'normal! '.c.'|'.a."\<C-a>"
""    endif
""    normal `<
"endfunction
"vnoremap <C-a> :call Incr()<CR>

" Substitution preview
function! VisualFindAndReplace()
    :OverCommandLine%s/
    :w
endfunction
function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
    :w
endfunction

" Automatic commands
if has("autocmd")
  augroup aug_bufred
    autocmd!
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
    autocmd BufNewFile,BufRead *.es6 set filetype=javascript
  augroup END
endif
"au BufReadPost *.em set syntax=jade
"au BufReadPost *.emblem set syntax=jade

" Fix timeout when pressing escape key
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
" dictionary, source files, and completor to find matching words to complete.

" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
"function! TabOrComplete() abort
  " If completor is already open the `tab` cycles through suggested completions.
"  if pumvisible()
"    return "\<C-N>"
"  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
"  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-R>=completor#do('complete')\<CR>"
"  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
"    return "\<Tab>"
"  endif
"endfunction

" Organize TypeScript imports
function! OrganizeImports()
    execute ':CocCommand tsserver.organizeImports'
endfunction

" Toggle background color setting
function ToggleBackground()
  if &background ==# 'dark'
    set background=light
  else
    set background=dark
  endif
endfunction

" Use slash-t to toggle background color
noremap <leader>t :call ToggleBackground()<CR>

function! ToggleCopilot()
  if execute(':Copilot status') =~ "Enabled"
    execute ':Copilot disable'
    echo 'Copilot Disabled'
  else
    execute ':Copilot enable'
    echo 'Copilot Enabled'
  endif
endfunction

" Use slash-p to toggle code pilot
noremap <leader>p :call ToggleCopilot()<cr>

" Use JSX syntax highlighting in TSX files
autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx

" === PLUGINS ===

" Required options for NERDcommenter
filetype plugin on
filetype plugin indent on

" Solarized theme options
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1

" Gruvbox theme options
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'

" NerdTree show hidden files
let NERDTreeShowHidden=1

" Don't close NERDTree pane when opening a file
let NERDTreeQuitOnOpen = 0

" Delete buffer after deleting file with NERDTree
let NERDTreeAutoDeleteBuffer = 1

" Make NERDTree pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Start NERDTree if no files were specified
if exists("*NERDTree")
  if has("autocmd")
    augroup aug_nerdtree
      autocmd!
      autocmd vimEnter * if !argc() | NERDTree | endif
    augroup END
  endif

  " Open NERDTree by default when starting vim with no file
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

" Close tab if only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ctrl-P options
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](transpiled)|dist|tmp|node_modules|(\.(swp|git|bak|pyc|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_reuse_window = 'startify'
" Open file in new tab
let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': [],
            \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
            \ }
"map <Leader>fs :CtrlPTag<CR>
"map <Leader>fd :CtrlPCurFile<CR>
"map <Leader>fb :CtrlPBuffer<CR>
" nnoremap <Leader>ff :CtrlP<CR>

" spellcheck
map ^T :w!<CR>:!aspell check %<CR>:e! %<CR>

" Enable closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml'

" Syntastic checker
"let g:syntastic_javascript_checkers = ['jshint','eslint']
"let g:syntastic_html_tidy_ignore_errors = [" proprietary attribute \"ng-"]
"let g:syntastic_enable_signs = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 1
"set statusline+=%#warningmsg#
"if exists("*SyntasticStatuslineFlag")
"  set statusline+=%{SyntasticStatuslineFlag()}
"endif
"set statusline+=%*

" Mustache abbreviations
"let g:mustache_abbreviations = 1

" Emmet trigger key ie. Ctrl+y+,
"let g:user_emmet_leader_key='<C-Y>'

" Enable omni completion.
if has("autocmd")
  augroup aug_winfocus
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  augroup END
endif

" plasticboy/vim-markdown disable folding
"let g:vim_markdown_folding_disabled = 1

" Enable code folding (vim-javascript-syntax)
" NOTE: disabled because it's buggy
"au FileType javascript call JavaScriptFold()

" DelimitMate options
"au FileType mail let b:delimitMate_autoclose = 0

" Neocomplache options
"let g:acp_enableAtStartup = 0
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_min_syntax_length = 0

" VimCompleteMe options
"autocmd FileType vim let b:vcm_tab_complete = 'vim'

" Deoplete options
"let g:deoplete#enable_at_startup = 1

" Tern options
"let g:tern_map_keys=1

" Indent colors
"let g:indentLine_color_term = 239

" EasyMotion options
"let g:EasyMotion_leader_key = '<Leader>'

" miniBuffExplorer options
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

" Quramy/tsuquyomi options
"let g:tsuquyomi_shortest_import_path = 1
"let g:tsuquyomi_ignore_missing_modules = 1
"let g:tsuquyomi_baseurl_import_path = 1
" If enabled, makes popup slower
"let g:tsuquyomi_completion_detail = 0

" prabirshrestha/asyncomplete.vim options
"let g:asyncomplete_matchfuzzy = 1

" YouCompleteMe options
" set runtimepath+=~/.vim/bundle/YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_show_diagnostics_ui = 1
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_auto_trigger = 1
"let g:ycm_always_populate_location_list = 1
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_cache_omnifunc = 1
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
" TODO: linux paths
"let s:ycm_rust_src_path = '/Users/mota/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
"if isdirectory(s:ycm_rust_src_path)
"    let g:ycm_rust_src_path=s:ycm_rust_src_path
"endif

" CoC options
"let g:coc_global_extensions = ['coc-go', 'coc-cmake', 'coc-rls', 'coc-python', 'coc-tsserver', 'coc-tslint-plugin', 'coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-highlight', 'coc-git', 'coc-snippets']
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

" NOTE: Disable this if using MuComplete bundle
"set completeopt-=preview
set completeopt+=longest,menuone

" spell checker word completion
set complete+=kspell

" enable dictionary completion
set complete+=k

" enable completion for tags
set complete+=t

" scan current buffer
set complete+=.

" scan buffers from other windows
set complete+=w

" scan other loaded buffers that are in the buffer list
set complete+=b

" scan unloaded buffers that are in the buffer list
set complete+=u

" Rip-Rip/clang_complete options
set conceallevel=0 " don't hide JSON quotes
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'

" MUcomplete options
"set noinfercase
"set completeopt-=preview
"set completeopt+=longest,menuone,noselect
" NOTE: The following line assumes `brew install llvm` in macOS
"let s:clang_library_path = '/usr/local/opt/llvm/lib/libclang.dylib'
"if !empty(s:clang_library_path)
"    let g:clang_library_path=s:clang_library_path
"endif

"let g:clang_user_options = '-std=c++14'
"let g:clang_complete_auto = 1
"let g:mucomplete#always_use_completeopt = 1
"let g:mucomplete#completion_delay = 2
"let g:mucomplete#enable_auto_at_startup = 1
"let g:mucomplete#can_complete = { 'default': {'omni': { t -> strlen(&l:omnifunc) > 0 && t =~# '\%(\k\k\|\.\)$' } } }
"let g:mucomplete#chains = { 'default': [ 'omni', 'file', 'incl'] }

" maralla/completor options
"let s:completor_python_binary = '/usr/bin/python'
"if !empty(s:completor_python_binary)
"    let g:completor_python_binary=s:completor_python_binary
"endif
"let s:completor_racer_binary = '/Users/mota/.cargo/bin/racer'
"if !empty(s:completor_racer_binary)
"    let g:completor_racer_binary=s:completor_racer_binary
"endif
"let s:completor_clang_binary = '/usr/bin/clang'
"if !empty(s:completor_clang_binary)
"    let g:completor_clang_binary=s:completor_clang_binary
"endif
"let s:completor_gocode_binary = '/Users/mota/go/bin/gocode'
"if !empty(s:completor_gocode_binary)
"    let g:completor_gocode_binary=s:completor_gocode_binary
"endif
"let s:completor_node_binary = '/usr/local/bin/node'
"if !empty(s:completor_node_binary)
"    let g:completor_node_binary=s:completor_node_binary
"endif
"let s:completor_complete_options = 'menuone,noselect,preview'
"let g:completor_auto_trigger = 0

" UltiSnips options
" NOTE: do not use <tab> if using YCM or CoC
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
"let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips", "UltiSnips"]
"let g:UltiSnipsEditSplit="context"
"let g:UltiSnipsEnableSnipMate=1
"let g:UltiSnipsListSnippets="<c-s>"

" SnipMate snippets options
"let g:snippets_dir = "~/.vim/snippets"

" Load Slimv client for common lisp
" TODO: linux command
"let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp\""'
"set guioptions+=m

" Make matching parentheses have same color in lisp
let g:lisp_rainbow=1

" Powerline options
"set rtp+=~/.powerline/powerline/bindings/vim

" Use powerline fonts
"let g:airline_powerline_fonts = 1

" Airline options
"let g:airline#extensions#tabline#enabled = 1

" vim-go options
" run command :GoInstallBinaries in vim first for goimports to work
let g:go_fmt_command = "goimports"
" options for gofmt command
"let g:go_fmt_options = "--tabs=false --tabwidth=4"
let g:go_metalinter_enabled = ['gofmt', 'vet', 'golint', 'errcheck', 'gas', 'deadcode', 'gotype']
let g:go_metalinter_autosave = 1
" these 3 options cause vim to crash on save, so disabling them.
"let g:go_metalinter_command='gopls'
"let g:go_gopls_staticcheck = 1
"let g:go_metalinter_deadline = '20s'
let g:go_test_timeout = '10s'
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" disabled; causes vim redraw lag
let g:go_auto_type_info = 0
let s:go_bin_path = "/usr/local/go/bin/go"
if isdirectory(s:go_bin_path)
  let g:go_bin_path=s:go_bin_path
endif
if isdirectory($HOME."/go")
  let $GOPATH = $HOME."/go"
endif
if isdirectory("/usr/local/go")
  let $GOROOT = "/usr/local/go"
endif

" mxw/vim-jsx options
"let g:jsx_ext_required = 0

" szw/vim-maximizer window maximizer options
"let g:maximizer_set_default_mapping = 1

" Netrw ":Explore" options
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" cairo plugin
"let g:cairo_linter_autosave = 1

" kristijanhusak/vim-js-file-import options
"let g:js_file_import_from_root = 1
"let g:js_file_import_root = getcwd().'/src'
"let g:js_file_import_root_alias = 'src/'
"let g:js_file_import_use_fzf = 1
"let g:js_file_import_sort_after_insert = 1
"let g:js_file_import_prompt_if_no_tag = 1
"let g:js_file_import_force_require = 0
"let g:js_file_import_package_first = 1
"let g:js_file_import_omit_semicolon = 1
"let g:js_file_import_string_quote = "'"
"let g:js_file_import_strip_file_extension = 1

" Github copilot options
let g:copilot_filetypes = {
  \ '*': v:false,
  \ 'xml': v:true,
  \ 'html': v:true,
  \ 'css': v:true,
  \ 'markdown': v:true,
  \ 'javascript': v:true,
  \ 'typescript': v:true,
  \ 'typescriptreact': v:true,
  \ 'python': v:true,
  \ 'go': v:true,
  \ 'rust': v:true,
  \ 'vim': v:true,
  \ }
"let g:copilot_no_tab_map = v:true
let g:copilot_assume_mapped = v:true

" === SHORTCUTS ===

" Paste mode toggle
"map <F9> :set invpaste paste?<CR>
" List mode toggle
"map <F10> :set invlist list?<CR>
" \ + ss to strip whitespace
"map <Leader>ss :call StripWhitespace()<CR>
" \ + ts to convert tabs to whitespace
"map <Leader>ts :call TabsToWhitespace()<CR>
" \ + ct to open ConqueTerm
"map <Leader>ct :tabe <bar> ConqueTerm bash<CR>

" Treat long lines as line breaks
map j gj
map k gk

" Clear highlights
"map <Leader>c :noh<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>)

" Hold Ctr and use movement keys to move around window splits
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Ctr-tab to switch buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" Map ctrl-p to FZF
map <c-p> :FZF<CR>

" Ack text search shortcut (ack.vim)
" map <Leader>a :Ack!<space>
" map <c-a> :Ack!<CR>

" FZF shortcut
" noremap <leader>f :FZF<CR>
noremap <c-a> :Rg<CR>

" Mapping selecting mappings
"nmap <leader><tab> <plug>(fzf-maps-n)
"xmap <leader><tab> <plug>(fzf-maps-x)
"omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
"imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-f> <plug>(fzf-complete-path)
"imap <c-x><c-l> <plug>(fzf-complete-line)

" NerdTree shortcut
" NERDTreeToggle opens panel at root
map <Leader>d :NERDTreeToggle<CR>
" NERDTreeFind opens panel at current file location
nmap <Leader>f :NERDTreeFind<CR>

" TagBar key binding
"nmap <F8> :TagbarToggle<CR>
" autocmd BufRead *.js :TagbarToggle
" Save as sudo
"command W w !sudo tee % >/dev/null
" Reload ~/.vimrc with \ + rv
"map <Leader>rv :source $MYVIMRC<CR>

" Scratch shortcut key
noremap <leader>sc :Scratch<CR>

" YCM go to defintions shortcut key
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Shortcut to align indents
"map <F12> mzgg=G`z :call StripWhitespace()<CR>

" Ctr-c inbetween brackets to expand (DelimitMate)
"imap <C-c> <CR><Esc>O

" Visual search and replace shortcut key
"nnoremap <Leader>sr :call VisualFindAndReplace()<CR>
"xnoremap <Leader>sr :call VisualFindAndReplaceWithSelection()<CR>

" szw/vim-maximizer window maximizer key bindings
"nnoremap <silent><C-w>z :MaximizerToggle<CR>
"vnoremap <silent><C-w>z :MaximizerToggle<CR>gv
"inoremap <silent><C-w>z <C-o>:MaximizerToggle<CR>

" Easy window resizing
"map <C-]> 5<C-w>>
"map <C-[> 5<C-w><
"map <C-m> 3<C-w>+
"map <C-n> 3<C-w>-

" Tabular shortcut keys
"xnoremap <Leader>a= :Tabularize /=<CR>
"xnoremap <Leader>a: :Tabularize /:<CR>
"xnoremap <Leader>a:: :Tabularize /:\zs<CR>
"xnoremap <Leader>a, :Tabularize /,<CR>
"xnoremap <Leader>a<Bar> :Tabularize /<Bar><CR>

" miniBuffExplorer toggle shortcut key
"map <Leader>e :MBEToggle<cr>

" CoC shortcuts
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
"if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif
" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

" press <TAB> to use completion suggestion
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" more info: https://www.reddit.com/r/neovim/comments/weydql/comment/ikkl1eq/?utm_source=share&utm_medium=web2x&context=3
" note: that this makes tab not tab indent anymore which is undesired
"inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-n>"

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"

" use 'jk' keys to navigate autocomplete popup.
" disabled because it interferes with typing.
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Vimux npm test
"map <leader>nt :call VimuxRunCommand("clear; npm test")<CR>
" Vimux Prompt
"map <leader>x :VimuxPromptCommand<CR>

" Use `tab` key to select completions. Default is arrow keys.
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion. Default suggests completions as you type.
" inoremap <expr> <Tab> TabOrComplete()

" Use slash-c to toggle comment lines
noremap <leader>c :Commentary<cr>

" Press ESC twice to clear out CoC floating windows
nnoremap <silent> <ESC><ESC> :nohlsearch \| match none \| 2match none \| call coc#float#close_all()<CR>

" === EXAMPLES ===

" binary viewer
" :%!xxd

" revert binary viewer
" :%!xxd -r

" Plug CLI
"vim +PlugInstall
"vim +PlugUpdate
"vim +PlugClean


" Set the color theme (keep this at bottom of file)
" NOTE: disable if themes not installed
"colorscheme oblivion
"colorscheme PaperColor
colorscheme gruvbox
