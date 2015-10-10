" Dimas Cyriaco

source ~/.nvim/bundle.vim " load plugins

" Vim config {{
set nocompatible
filetype off
set noswapfile
let mapleader = "\<Space>"
" }}

" Colors {{
syntax enable        " enable syntax highlight
colorscheme badwolf  " set colorscheme
" }}

" Spaces & Tabs {{
set expandtab       " use spaces instead of TABs
set tabstop=2       " 2 spaces per TAB
set shiftwidth=2
set softtabstop=2   " 2 spaces per TAB when editing
" }}

" UI Config {{
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
" }}

" Searching {{
set incsearch  " search as characters are entered
set hlsearch   " highlight search results
set ignorecase " ignore case when searching
" }}

" Folding {{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" set foldmethod=syntax
" }}

set backspace=indent,eol,start

let g:UltiSnipsExpandTrigger="<c-j>"

" =================== NERDTree =====================
let NERDTreeQuitOnOpen=1

" neovim.org/doc/user/nvim_clipboard.htmlencoding
set clipboard^=unnamedplus

" =================== Syntastic ====================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ==================== Tagbar ======================
" let g:tagbar_autofocus = 1
" let g:tagbar_autoclose = 1

source ~/.nvim/bindings.vim

" =================== Airline ======================
let g:airline_powerline_fonts = 1

" ================== Nvim Term =====================
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" ==================== RSpec =======================
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bin/rspec {spec} --color"

" =================== Buffer =======================
map <Leader><Tab> :b#<CR>

" ===================== Clang ======================
let g:clang_library_path='/usr/lib/llvm-3.6/lib/libclang.so'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" ==================== Rust ========================
let g:racer_cmd = "/usr/local/bin/racer"
let $RUST_SRC_PATH="/home/dimas/code/rust/src/"

" CtrlP {{
let g:ctrlp_switch_buffer = 0 " open file on new buffer
let g:ctrlp_working_path = 0    " respects path changes
" }}
