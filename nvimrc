set nocompatible
filetype off
let mapleader = "\<Space>"

source ~/.nvim/bundle.vim

set hlsearch
set incsearch
set noswapfile
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set relativenumber
set number
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set backspace=indent,eol,start
set splitbelow
set splitright

syntax enable
colorscheme railscasts

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

" =================== Folding ======================
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent

