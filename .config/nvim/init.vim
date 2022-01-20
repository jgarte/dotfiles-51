set termguicolors
set colorcolumn=80
set background=light
colorscheme summerfruit256

set expandtab
set incsearch
set number
set clipboard+=unnamedplus
set synmaxcol=200
set scrolloff=10
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=72
set formatoptions=tcro
set autoindent
set nobackup
set nowritebackup

syntax sync fromstart
set syntax=off

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
:nnoremap <Leader>r :Rg<CR>
:nnoremap <Leader>f :Files<CR>
:nnoremap <Leader>l :BLines<CR>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
nmap <Leader>gt <Plug>(coc-type-definition)
nmap <Leader>gre <Plug>(coc-references)
nmap <Leader>grn <Plug>(coc-rename)
nmap <Leader>gd <Plug>(coc-diagnostic-info)
nmap <Leader>gp <Plug>(coc-diagnostic-prev)
nmap <Leader>gn <Plug>(coc-diagnostic-next)
setlocal tagfunc=CocTagFunc
call plug#end()
