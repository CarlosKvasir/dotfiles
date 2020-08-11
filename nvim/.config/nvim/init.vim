" ----------------------------------------------------------
"         TRUECOLOR ENABLE
" ----------------------------------------------------------
if has ("termguicolors")
    set termguicolors
endif

" ----------------------------------------------------------
"         NeoBundle Scripts
" ----------------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" ----------------------------------------------------------
"    THIS IS WHERE YOUR PLUGINS WILL COME
" ----------------------------------------------------------
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'wikitopian/hardmode'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'dracula/vim'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'elixir-editors/vim-elixir'
call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" End NeoBundle Scripts ------------------------------------

" ----------------------------------------------------------
"         CONFIGS
" ----------------------------------------------------------
set nu              "Mostra número de linhas
set relativenumber  "Mostra números relativos
set background=dark
colorscheme dracula

syntax on
set autoindent
set textwidth=80

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set visualbell
"set title
set sm              "substituição magica ???
set incsearch

" ----------------------------------------------------------
"         Melhorar movimentação
" ----------------------------------------------------------
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ----------------------------------------------------------
"         STATUS BAR Vim-Airline
" ----------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ----------------------------------------------------------
"         Multiple Cursors
" ----------------------------------------------------------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" ---------------------------------------------------------
"         Configs to Use buffers in tabs
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

"-- FzF
set rtp+=~/.fzf

