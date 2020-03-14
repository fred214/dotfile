

set splitright
"set paste
set ts=4
set sw=4
set expandtab
set autoindent
set number

let mapleader=" "

nnoremap <A-q> :q<CR>
nnoremap <A-s>  :w<CR>
inoremap <A-s>  <ESC>:w<CR>

nnoremap <A-e> :vsp ~/.config/nvim/init.vim<CR>
nnoremap <A-a> :w<CR>:source ~/.config/nvim/init.vim<CR>:q<CR>
inoremap <A-a> <ESC>:w<CR>:source ~/.config/nvim/init.vim<CR>:q<CR>
nnoremap <A-t> :vsp<CR>:term zsh<CR>i



" Compile function
noremap <A-r> :call CompileRun()<CR>
func! CompileRun()
	exec "w"
	if &filetype == 'python'
		"set splitbelow
		":sp
		"resize 10
        :vs
		:term python3 %
	endif
endfunc


call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/eleline.vim'
" Plug 'bling/vim-bufferline'
Plug 'ajmwagar/vim-deus'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

let g:coc_global_extensions = ['coc-json','coc-python']


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" NerdComment
let g:NERDSpaceDelims = 1

" NerdTree
noremap <A-n> :NERDTreeToggle<CR>

" reopening a file and jump to the last position when
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
" confict with startify






color deus
