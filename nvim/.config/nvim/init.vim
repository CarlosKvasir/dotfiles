" ----------------------------------------------------------
"       Plug Scripts autoinstall & load
" ----------------------------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------------------------
"       THIS IS WHERE YOUR PLUGINS WILL COME
" ----------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'wakatime/vim-wakatime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-editors/vim-elixir',{'for': 'elixir'}
call plug#end()

" ----------------------------------------------------------
"       TRUECOLOR ENABLE
" ----------------------------------------------------------
if has ("termguicolors")
    set termguicolors
endif

" ----------------------------------------------------------
"       CONFIGS
" ----------------------------------------------------------
set nu              "Mostra número de linhas
set relativenumber  "Mostra números relativos
set background=dark
colorscheme nord

syntax on
set autoindent
set textwidth=80

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set visualbell
set title
set sm              "substituição magica ???
set incsearch

" ----------------------------------------------------------
"       STATUS BAR Vim-Airline
" ----------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ----------------------------------------------------------
"       COC config
" ----------------------------------------------------------
let g:coc_global_extension = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
let g:python3_host_prog = expand('~/.asdf/shims/python3.8')

" ---------------------------------------------------------
"       Configs to Use buffers in tabs
" ---------------------------------------------------------
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>
nmap <leader>L :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>x :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
