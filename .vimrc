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
let mapleader = ","


">Vundle Bundles
" ==============
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
":PluginInstall: install new plugs
":PluginList: list of plugins

">Languages and Syntax
Bundle 'othree/html5.vim'
"HTML syntax highlight
Bundle 'vim-stylus'
"html & css stylus update
Bundle 'coot/atp_vim'
"Automatic Tex Plugin
Bundle 'tpope/vim-endwise'
"For brackets auto-completion
"Bundle 'fatih/vim-go'
"For Go programming language
Bundle 'mattn/emmet-vim'
"Expand abbreviation, <c-y>,: activate; div>p#id$*3>a; select text + <c-y>,
"+ ul>li*
"<c-y>A: quote in HTML; <c-y>k: remove an HTML tag
" Bundle 'davidhalter/jedi-vim'
"For Python autocomplete

">UI Upgrades
Bundle 'majutsushi/tagbar'
"F4: toggle summary view; ctags -R: allows <c-]> to go to definition.
"<c-T> to go back to previous location. used with exuberant ctags.
Bundle 'scrooloose/nerdtree'
"F2: toggle directory view; o: open file; i: open split;
"t/T: open in new tab (silently); s: open vsplit
"cd: change pwd to that directory; C: change root to selected dir;
"Bookmark <haha>; B: toggle bookmark view
Bundle 'scrooloose/syntastic'
"syntax check upon save/exit
Bundle "myusuf3/numbers.vim"
"F3: toggle numbers
Bundle 'sjl/gundo.vim'
"\u to show list of history undos
Bundle 'bling/vim-airline'
"status line at the bottom
Bundle 'kien/ctrlp.vim'
"vague search, remapped to '\+p'
Bundle 'altercation/vim-colors-solarized'
"solarized color scheme
Bundle "flazz/vim-colorschemes"
"~500 schemes, use colorscheme to set

">Editing Upgrades
Bundle 'YankRing.vim'
"F9: toggle yank history. ctrl+p/n: last/previous yank
Bundle 'easymotion/vim-easymotion'
"s: search in both dir; <leader>j/k: multiple lines up/down
Bundle 'tomtom/tcomment_vim'
" gcc or <c-_><c-_>: comment / uncomment a line; gc: comment selected block.
Bundle 'Raimondi/delimitMate'
"Auto close quotes / brackets
Bundle 'tpope/vim-surround'
"viwS': surround the word with quote; cs'"/ds': change/delete surrounding
"viwStem: surround with <em>; cs"tem: change surrounding tag to <em>
Bundle 'shougo/neocomplete'
"Auto complete
Bundle 'simplyzhao/cscope_maps.vim'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
"dash.app inside vim, some offline code API

"Bundle 'terryma/vim-multiple-cursors'
"lustyExplorer
"Search inside open buffer; map to <leader>/
"ack.vim
"Ack 'word' folder: find words in folders;
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
"nmap <leader>a :tab split<CR>:Ack ''<left>
"nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>

">Misc Upgrades
" Bundle 'tpope/vim-fugitive'
" Bundle 'mattn/gist-vim'
"To create gist: a simple way to share snippets.
" Bundle 'mattn/webapi-vim'

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
"let g:tagbar_ctags_bin='/usr/bin/'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
",.: search through the list of tags and jump to it.
nnoremap <leader>. :CtrlPTag<cr>

" ================ KEY REMAPPINGS ===================
map <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>

map <silent> <F3> <Esc>:NumbersToggle<CR>
imap <silent> <F3> <Esc>:NumbersToggle<CR>

map <silent> <F4> <Esc>:TagbarToggle<CR>
imap <silent> <F4> <Esc>:TagbarToggle<CR>i

map <silent> <F5> <Esc>:tabp<CR>
imap <silent> <F5> <Esc>:tabp<CR>i

map <silent> <F6> <Esc>:tabn<CR>
imap <silent> <F6> <Esc>:tabn<CR>i

nnoremap <silent> <F9> :YRShow<CR>

imap jk <Esc>

map <S-s> :join<CR>
map <S-j> 5j
map <S-k> 5k

">Lokaltog/vim-easymotion.vim
" let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <Leader> <Plug>(easymotion-prefix)
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

">kien/ctrlp.vim
"set wildignore+=*.o,*.pyc,.git,bin,node_modules,venv
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_relative = 1

let g:ctrlp_buftag_types = {
     \ 'go'         : '--language-force=go --golang-types=ftv',
     \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
     \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
     \ 'objc'       : '--language-force=objc --objc-types=mpci',
     \ }

">YankRing.vim
let g:yankring_history_file = '.yankring_history'

">scrooloose/nerdcommenter
" let g:NERDSpaceDelims = 1

">scrooloose/syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"=============Lokaltog/vim-powerline
let g:Powerline_symbols = 'fancy'

">Raimondi/delimitMate
let delimitMate_balance_matchpairs = 1

">mattn/gist-vim
" let g:gist_clip_command = 'pbcopy'
" let g:gist_detect_filetype = 1
" let g:gist_show_privates = 1
" let g:gist_post_private = 1

">mattn/emmet-vim
let g:user_emmet_leader_key = '<c-y>'
let g:user_emmet_expandabbr_key = '<C-y>,'
let g:user_emmet_expandword_key = '<C-y>;'
let g:user_emmet_update_tag = '<C-y>u'
let g:user_emmet_balancetaginward_key = '<C-y>d'
let g:user_emmet_balancetagoutward_key = '<C-y>D'
let g:user_emmet_next_key = '<C-y>n'
let g:user_emmet_prev_key = '<C-y>N'
let g:user_emmet_imagesize_key = '<C-y>i'
let g:user_emmet_togglecomment_key = '<C-y>/'
let g:user_emmet_splitjointag_key = '<C-y>j'
let g:user_emmet_removetag_key = '<C-y>k'
let g:user_emmet_anchorizeurl_key = '<C-y>a'
let g:user_emmet_anchorizesummary_key = '<C-y>A'
let g:user_emmet_mergelines_key = '<C-y>m'
let g:user_emmet_codepretty_key = '<C-y>c'


"============altercation/vim-colors-solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

set background=dark

colorscheme hybrid

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
nnoremap <silent> <leader>u :GundoToggle<cr>

" Other Mappings

" Force save read only files.
" cnoremap w!! %!sudo tee > /dev/null %

" Clears highlighting.
" nnoremap <leader><space> :noh<cr>

" Reselect visual block after indent/outdent
" vnoremap < <gv
" vnoremap > >gv

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
set noexpandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

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

" Enable spell checking
set spell spelllang=en_us
" Fix mis-spelled word with <leader>f
nnoremap <leader>f 1z=
" Toggle spell check with <leader>f
nnoremap <leader>s :set spell!




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif

