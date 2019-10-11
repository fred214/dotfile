
set number
set ts=4
set autoindent
set expandtab
set smarttab
set t_Co=256

:let mapleader = ',' 



" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

"Plug 'altercation/vim-colors-solarized'
call plug#end()

" vim-colors-solarized
"syntax enable
"set background=dark
"colorscheme solarized
"let g:pymode_motion = 1
"let g:solarized_termcolors=256

" python-mode
"let g:pymode = 1
"let g:pymode_options = 1
"let g:pymode_rope = 1
"let g:pymode_rope_completion = 1
"let g:pymode_rope_complete_on_dot = 1
let g:pymode_options_colorcolumn = 0
