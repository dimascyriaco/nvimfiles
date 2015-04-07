set nocompatible
filetype off
let mapleader = ','

source ~/.nvim/bundle.vim

set hlsearch
set incsearch
set noswapfile
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4
set relativenumber
set number
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

syntax enable
set background=dark
colorscheme solarized

source ~/.nvim/bindings.vim

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
