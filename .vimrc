highlight VertSplit cterm=NONE
set fillchars+=vert:\▏


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

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
:nnoremap <C-s> :BLines<Return>
:nnoremap <C-k> :Files<Return>
call plug#end()

