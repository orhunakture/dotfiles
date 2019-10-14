call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

call plug#end()

" color scheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" global
set number
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab

" search
set incsearch
set ignorecase

" disable mouse
set mouse=

" no additional files
set nobackup
set noswapfile
set noundofile

" clipboard
set clipboard=unnamed

" file
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,cp936

" highlight chars
set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
set list

" key mappings
"   movement
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-s> :w<Return>

nnoremap <C-j> :bnext<Return>
nnoremap <C-k> :bprevious<Return>

tnoremap <Esc> <C-\><C-n>

" vim:ts=3:sw=3:et:ft=vim:ff=unix
