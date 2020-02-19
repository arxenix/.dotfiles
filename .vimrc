filetype plugin indent on
syntax on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" when backspace, delete 4 spaces if possible
set softtabstop=4

" use jkl; Down Up Left Right
noremap l h
noremap ; l
noremap h ;
" disable arrow keys (bad habit)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
