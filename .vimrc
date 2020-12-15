if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


if empty(glob('~/.vim/autoload/pathogen.vim'))
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
endif

execute pathogen#infect()

call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'

call plug#end()

set number
set numberwidth=2
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
