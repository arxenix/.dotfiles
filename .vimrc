filetype plugin indent on
syntax on
" set background=dark
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" when backspace, delete 4 spaces if possible
set softtabstop=4
" line numbers in hybrid mode (both relative & current line as absolute)
set number relativenumber

" use jkl; Down Up Left Right
noremap l h
noremap ; l
noremap h ;

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of pluginse
Plug 'tpope/vim-sensible'                 " sensible defaults
Plug 'scrooloose/nerdtree'                " file tree explorer
Plug 'vim-airline/vim-airline'            " better bottom status line
Plug 'jeffkreeftmeijer/vim-numbertoggle'  " toggle between line num modes in insert mode


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" airline config - [OPTIONAL] better display w/ powerline font
let g:airline_powerline_fonts = 1

