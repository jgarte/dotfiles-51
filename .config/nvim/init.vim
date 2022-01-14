highlight VertSplit cterm=NONE
set fillchars+=vert:\▏

set termguicolors
set colorcolumn=80
set background=light
colorscheme summerfruit256

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
:nnoremap <C-s> :BLines<Return>
:nnoremap <C-k> :Files<Return>
call plug#end()
