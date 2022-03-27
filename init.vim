
set splitright
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set ff=unix
set colorcolumn=100

let mapleader=" "


nnoremap <A-q> :q<CR>
"nnoremap <A-q> :bd<CR>
nnoremap <A-s> :w<CR>
inoremap <A-s> <ESC>:w<CR>

nnoremap <A-e> :vsp ~/.config/nvim/init.vim<CR>
nnoremap <A-f> :source ~/.config/nvim/init.vim<cr>
inoremap <A-f> <ESC>:source ~/.config/nvim/init.vim<cr>
nnoremap <A-a> :w<CR>:source ~/.config/nvim/init.vim<CR>:q<CR>
inoremap <A-a> <ESC>:w<CR>:source ~/.config/nvim/init.vim<CR>:q<CR>
nnoremap <A-t> :vsp<CR>:term zsh<CR>i
inoremap <A-t> <ESC>:vsp<CR>:term zsh<CR>i
nnoremap <A-c> :vsp ~/.config/nvim/coc-settings.json<CR>

noremap <A-+> :vertical resize +5<CR>
noremap <A-_> :vertical resize -5<CR>

noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <A-ESC> <C-\><C-n>

nmap <C-j> ]m
nmap <C-k> [m
noremap <C-h> :bp<CR>
noremap <C-l> :bn<CR>
noremap <A-d> :bd<CR>

" git blame, fzf.vim
nnoremap gl :BCommits<CR>
vnoremap gl :BCommits<CR>

" lazygit.nvim
nnoremap lg :LazyGit<CR>

" alt+tab jump out pairs
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
        return "\<ESC>la"  
    else  
        return "\t"  
    endif  
endfunc

inoremap <A-TAB> <c-r>=SkipPair()<CR>


call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'farmergreg/vim-lastplace'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajmwagar/vim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'Yggdroot/indentLine'
"Plug 'abecodes/tabout'
"Plug 'glepnir/galaxyline.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'abecodes/tabout.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'
call plug#end()

" NerdTree
noremap <A-n> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Theme
set termguicolors
"color hybrid_reverse
color deus

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" IndentLine
"let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0

" Coc config
"let g:python3_host_prog = '/usr/local/bin/python3'
let g:loaded_perl_provider = 0
let g:coc_global_extensions = ['coc-json','coc-pyright','coc-pairs','coc-snippets','coc-go']

set encoding=utf-8
set hidden
set nobackup
set nowritebackup
"set cmdheight=2
set updatetime=100
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <a-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
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
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

