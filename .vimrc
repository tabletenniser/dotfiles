" Some general instructions:
" - Requires `vundle` (https://github.com/gmarik/vundle)
" - Run `:BundleInstall` on first run.
" Critical Configurations
" =======================
">Terminal Colours
set t_Co=256

">Vundle Setup Requirementns
set nocompatible
"filetype on
filetype off

">Leader Key
"let mapleader = ","


">Vundle Bundles
" ==============

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

">Quick compiling
"Bundle 'xuhdev/SingleCompile'

">Languages and Syntax
"Bundle 'othree/html5.vim'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'digitaltoad/vim-jade'
" Bundle 'groenewege/vim-less'
" Bundle 'vim-stylus'
" Bundle 'c.vim'
" Bundle 'derekwyatt/vim-scala'
"Bundle 'mattn/emmet-vim'
" Bundle 'coot/atp_vim'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-endwise'

">UI Upgrades
"Bundle 'majutsushi/tagbar'
"Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/syntastic'
" Bundle 'sjl/gundo.vim'
" Bundle 'fholgado/minibufexpl.vim'
"Bundle 'Lokaltog/vim-powerline'
" Bundle 'bling/vim-airline'
"Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'w0ng/vim-hybrid'
"Bundle 'godlygeek/csapprox'

">Editing Upgrades
" Bundle 'ack.vim'
" Bundle 'YankRing.vim'
" Bundle 'goldfeld/vim-seek'
"Bundle 'tomtom/tcomment_vim'
"Bundle 'Raimondi/delimitMate'
" Bundle 'tpope/vim-surround'
Bundle 'Shougo/neocomplete'
"Bundle 'Shougo/neocomplcache'
" Bundle 'davidhalter/jedi-vim'
"Bundle 'Lokaltog/vim-easymotion'
" Bundle 'simplyzhao/cscope_maps.vim'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
"Bundle 'terryma/vim-multiple-cursors'

">Misc Upgrades
" Bundle 'tpope/vim-fugitive'
" Bundle 'mattn/gist-vim'
" Bundle 'mattn/webapi-vim'
"

call vundle#end()            " required
filetype plugin indent on    " required

"================ CONTROL-P VARS ===================
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }


"=============== TAGBAR VARS =======================
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide

" ================ KEY REMAPPINGS ===================
map <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>

map <silent> <F3> <Esc>:CtrlP<CR>
imap <silent> <F3> <Esc>:CtrlP<CR>

map <silent> <F4> <Esc>:TagbarToggle<CR>
imap <silent> <F4> <Esc>:TagbarToggle<CR>i

map <silent> <F5> <Esc>:tabp<CR>
imap <silent> <F5> <Esc>:tabp<CR>i

map <silent> <F6> <Esc>:tabn<CR>
imap <silent> <F6> <Esc>:tabn<CR>i

map <silent> <F11> <Esc>:q<CR>
imap <silent> <F11> <Esc>:q<CR>

map <F9> :SCCompile<CR>
imap <F9> :SCCompile<CR>

map <C-F9> :SCCompileRun<CR>
imap <C-F9> :SCCompileRun<CR>



">kien/ctrlp.vim
" set wildignore+=*.o,*.pyc,.git,bin,node_modules,venv
" let g:ctrlp_map = '<leader>t'
" let g:ctrlp_cmd = 'CtrlPMixed'
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_show_hidden = 1
" let g:ctrlp_mruf_relative = 1

"let g:ctrlp_buftag_types = {
"      \ 'go'         : '--language-force=go --golang-types=ftv',
"      \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
"      \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
"      \ 'objc'       : '--language-force=objc --objc-types=mpci',
"      \ }

">YankRing.vim
" let g:yankring_history_file = '.yankring_history'

">scrooloose/nerdcommenter
" let g:NERDSpaceDelims = 1

">scrooloose/syntastic
" let g:syntastic_quiet_warnings = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_auto_loc_list = 0

"=============Lokaltog/vim-powerline
let g:Powerline_symbols = 'fancy'

"=============VIM AIRLINE
" set guifont=Monaco\ for\ Powerline\ 10 
" let g:airline_powerline_fonts = 1

">fholgado/minibufexpl.vim
" let g:miniBufExplHideWhenDiff = 1

">Raimondi/delimitMate
" let delimitMate_balance_matchpairs = 1

">mattn/gist-vim
" let g:gist_clip_command = 'pbcopy'
" let g:gist_detect_filetype = 1
" let g:gist_show_privates = 1
" let g:gist_post_private = 1

">mattn/zencoding-vim
" let g:user_zen_leader_key = '<c-x>'

"============altercation/vim-colors-solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
let g:solarized_constrast = "normal"
let g:solarized_visibility = "normal"

set background=dark

colorscheme solarized

"============nanotech/jellybeans.vim
let g:jellybeans_use_lowcolor_black = 0
" colorscheme jellybeans

"============hybrid
" colorscheme hybrid

">Set font for GUI vim.
if has("gui_running")
  set guifont=Monaco:h14
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
endif

">dhalter/jedi-vim
" let g:jedi#auto_initialization = 1
" let g:jedi#popup_on_dot = 0
" let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#show_function_definition = 0
" autocmd FileType python let b:did_ftplugin = 1

">Shougo/neocomplete
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


">Key Remappings
">==============

">Bundle Mappings

">sjl/gundo.vim
" nnoremap <silent> <leader>u :GundoToggle<cr>

" mattn/zencoding-vim
" <c-x> toggles zencoding (mapped using zencoding's global variable)

" Shougo/neocomplcache
"inoremap <expr> <tab> CompleteCommonStringOrFinish("\<tab>")

" Other Mappings

" Quickly edit vimrc.
" nnoremap <leader>e :e! ~/.vimrc<cr>

" Force save read only files.
" cnoremap w!! %!sudo tee > /dev/null %

" Clears highlighting.
" nnoremap <leader><space> :noh<cr>

" Reselect visual block after indent/outdent
" vnoremap < <gv
" vnoremap > >gv

" Disable arrow keys by default, turn them into something useful (switch buffer).
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> :bp<cr>
" nnoremap <right> :bn<cr>

" Disable shift + K opening man pages.
" nnoremap <s-k> <nop>

" Don't need shift for commands.
" nnoremap ; :
" vnoremap ; :

" Leader to reselect pasted
" nnoremap <leader>v V`]

" Remap split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fix save typos.
:ca WQ wq
:ca Wq wq
:ca QA qa
:ca Qa qa
:ca W w
:ca Q q

" Leader to toggle list chars
nnoremap <leader>l :set list!<cr>


" Misc Settings
" =============

" Remember 700 lines of history.
set history=700

" Allow per project vimrc
set exrc
set secure

" Enable filetype plugin and indent files
filetype plugin on
filetype indent on

" Disable modelines (security exploits)
" set modelines=0

" Show line with cursor
set cursorline

" Fast terminal
" set ttyfast

" Set to auto read when a file is changed from the outside
" set autoread

" Speed up <shift>O
set timeoutlen=500
set ttimeoutlen=50

" Better copy and paste
" set pastetoggle=<F2>
" set clipboard=unnamed

" Add mouse scrolling.
set mouse=a

" Start scrolling 5 lines before the top/bottom
set scrolloff=10







" Turn on enhanced completions, and set completion options
" set wildmenu
set wildmode=list:longest
set completeopt=menuone,longest

" Command bar height
set cmdheight=2

" Change buffers without saving (allow hidden buffers).
set hidden

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Make search act like in modern browsers
set incsearch

" Default global substitution
" set gdefault

" Do not redraw when executing macros
set nolazyredraw

" Magic for reuglar expressions
set magic

" Show matching bracket indicator when text indicator is over them
set showmatch
set matchtime=2

" No sound on errors
set noerrorbells
set visualbell
set t_vb=

" Attempt to turn on encoding
set encoding=utf8
try
  lang en_US
catch
endtry

" Show the line number
set number

" Enable syntax highlighting
syntax enable

" Set invisible characters
set listchars=eol:¬,tab:▸·,trail:·

" Turn backup off (mostly using git, etc anyway)
set nobackup
set nowb
set noswapfile

" Tab settings
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set linebreak
set textwidth=0
set colorcolumn=100
set wrap

" Format options
set formatoptions=qrn1

" Indentation settings
set autoindent
set smartindent
au! FileType python setl nosmartindent 

" Always hide the status line
set laststatus=2


