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

" ================= Tagbar =========================
nmap <F8> :TagbarOpenAutoClose<CR>

" ================= Folding ========================
" nnoremap <Space> za
" vnoremap <Space> za
nnoremap <zO> zCzO

" ================= Scrolling ======================
map <C-S-j> <C-e>
map <C-S-k> <C-y>

" Searching {{
nnoremap <leader>h :nohlsearch<CR> " turn off search highlight
" }}

" Session {{
nnoremap <leader>s :mksession<CR> " save session
" }}

" Buffer switching {{
map <Leader><Tab> :b#<CR>
" }}

" RSpec {{
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bin/rspec {spec} --color"
" }}

" Term {{
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
" }}
