highlight VertSplit cterm=NONE
set fillchars+=vert:\▏

set termguicolors
set colorcolumn=80
set background=light
colorscheme summerfruit256

set expandtab
set number
set clipboard+=unnamedplus
set synmaxcol=200
set scrolloff=10

" Strip trailing whitespace on every save.
fun! StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)

endfun
autocmd BufWritePre * :call StripTrailingWhitespace()

nnoremap <ESC><ESC> :nohlsearch<CR>
noremap Q :put=''<CR>

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
:nnoremap <C-s> :BLines<Return>
:nnoremap <C-k> :Files<Return>
call plug#end()
