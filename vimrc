"vim configuration file
set relativenumber 
set number

"Pathogen init
execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree configuration
"
autocmd vimenter * NERDTree
"starts vim with the NERDtree open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map keys Ctrl-n to toogle NERDtree
map <C-n> :NERDTreeToggle<CR>
" close vim if only one remaining file is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | wq | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q! | endif
