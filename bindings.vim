" ==================== General =====================
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
imap jj <ESC>

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ==================== NERDTree ====================
nmap <Leader>n :NERDTreeToggle<cr>

" ==================== Fugitive ====================
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
vnoremap <leader>gb :Gblame<CR>

" ==================== Buffergator =================
nmap <Leader>m :BuffergatorToggle<cr>

