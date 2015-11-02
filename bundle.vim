call plug#begin('~/.vim/plugged')

Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'buffergator'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'benekastah/neomake'
Plug 'majutsushi/tagbar'
Plug 'justincampbell/vim-railscasts'
Plug 'Shougo/vimproc'
Plug 'Quramy/tsuquyomi'
Plug 'editorconfig/editorconfig-vim'
Plug 'sjl/badwolf'
Plug 'sickill/vim-pasta'
Plug 'rking/ag.vim'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'

Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

Plug 'Rip-Rip/clang_complete', { 'for': 'cpp' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

Plug 'tpope/vim-rails', { 'for': 'rails' }

Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }

Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

Plug 'slim-template/vim-slim', { 'for': 'slim' }

Plug 'cespare/vim-toml', { 'for': 'toml' }

call plug#end()
filetype plugin indent on
