" Dimas Cyriaco

" Vim config {{{
source ~/.nvim/bundle.vim " load plugins
set nocompatible
filetype off
set noswapfile
let mapleader = "\<Space>"
set ttyfast
set backspace=indent,eol,start " backspace through lines
source ~/.nvim/bindings.vim
" }}}

" Colors {{{
syntax enable        " enable syntax highlight
colorscheme badwolf  " set colorscheme
" }}}

" Spaces & Tabs {{{
set expandtab                  " use spaces instead of TABs
set shiftwidth=2
set softtabstop=2              " 2 spaces per TAB when editing
set tabstop=2                  " 2 spaces per TAB
" }}}

" UI Config {{{
set number          " turn on line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype indent on  " load filetype-specific indent files
set wildmenu        " visual auto complete for command menu
set lazyredraw      " redraw only when we need
set showmatch       " highlight matching [{()}]
set splitbelow      " new vertical split below current panel
set splitright      " new horizontal split to the right of current panel
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" Searching {{{
set ignorecase " ignore case when searching
set incsearch  " search as characters are entered
set hlsearch   " highlight search results
" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" set foldmethod=syntax
" }}}

" UltiSnips {{{
let g:UltiSnipsExpandTrigger="<c-j>"
" }}}

" NERDTree {{{
let NERDTreeQuitOnOpen=1
" }}}

" Clipboard {{{
set clipboard^=unnamedplus
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" Airline {{{
" let g:airline_powerline_fonts = 1
" }}}

" Clang {{{
let g:clang_library_path='/usr/lib/llvm-3.6/lib/libclang.so'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" }}}

" Rust {{{
let g:racer_cmd = "/usr/local/bin/racer"
let $RUST_SRC_PATH="/home/dimas/code/rust/src/"
" }}}

" CtrlP {{{
let g:ctrlp_switch_buffer = 0 " open file on new buffer
let g:ctrlp_working_path = 0    " respects path changes
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" }}}

" Lightline {{{
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['filetype', 'percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }
" }}}

" vim:foldmethod=marker:foldlevel=0
