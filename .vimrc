"vim configuration file
set relativenumber 
set number
"set tap spaces
set expandtab
set shiftwidth=2
set softtabstop=2
"Pathogen init
execute pathogen#infect()
syntax on
filetype plugin indent on
"NERDTree configuration
"
" map keys Ctrl-n to toogle NERDtree
map <C-n> :NERDTreeToggle<CR>
" close vim if only one remaining file is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | wq | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q! | endif
