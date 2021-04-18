" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Open NerdTree atach
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <space>e :CocCommand explorer <CR>

" Config Fugitive
"nmap <leader>gh :diffget //3<CR>
"nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
