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
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>
vnoremap <leader>gc :Gcommit<CR>

" ==================== Buffergator =================
nmap <Leader>m :BuffergatorToggle<cr>

" ==================== Go ==========================
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

" ================= Tagbar =========================
nmap <F8> :TagbarOpenAutoClose<CR>

" ================= Folding ========================
nnoremap <Space> za
vnoremap <Space> za
nnoremap <zO> zCzO
