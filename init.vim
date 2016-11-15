" Show line numbers
set number

" Show scroll percentage and characters in bottom right
set ruler

" Do not warn when changing buffer with unsaved file
set hidden

" Do not create swap files
set noswapfile

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Tabs and shift
set autoindent smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Run neomake linters on each save
"autocmd! BufWritePost,BufEnter * Neomake
" Open errors after linting
"let g:neomake_open_list = 2

if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

" Leader
let mapleader=","

" Plugins
nnoremap <leader>g :NERDTreeFind<cr>
nnoremap <leader>G :NERDTreeClose<cr>

" Open NERDTree on startup and move to main pane
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd w

" Close NERDTree if it is only window remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'neomake/neomake'
call plug#end()
