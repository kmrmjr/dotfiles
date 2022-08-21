set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set clipboard=unnamed
set number

" Serch config
" Case insensitive by default
set ignorecase
" Case sensitive only when capital letters are included
set smartcase
set hls

runtime ./plug.vim
runtime ./maps.vim
runtime ./theme.vim
