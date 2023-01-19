set shell=/bin/zsh
set shiftwidth=2
set tabstop=2
set expandtab
set textwidth=0
set autoindent
set clipboard=unnamed
set number
set conceallevel=0
let g:vim_json_syntax_conceal=0
" Serch config
" Case insensitive by default
set ignorecase
" Case sensitive only when capital letters are included
set smartcase
set hls

runtime ./plug.vim
runtime ./maps.vim
runtime ./theme.vim
