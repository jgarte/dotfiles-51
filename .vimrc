let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

highlight VertSplit cterm=NONE
set fillchars+=vert:\▏


call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
call plug#end()

let NERDTreeMinimalUI=1

:nnoremap <C-s> :BLines<Return>
:nnoremap <C-k> :Files<Return>
:nnoremap <C-n> :NERDTreeFocus<Return>
