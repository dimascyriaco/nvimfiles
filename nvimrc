set nocompatible
filetype off
let mapleader = ','

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

syntax enable
" set background=dark
colorscheme railscasts
" colorscheme molokai

let NERDTreeQuitOnOpen=1
let g:UltiSnipsExpandTrigger="<c-j>"

" neovim.org/doc/user/nvim_clipboard.htmlencoding
set clipboard^=unnamedplus

" ==================== Vim Go ======================
let g:go_fmt_command = "goimports"
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
hi! link goStatement PreProc

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
