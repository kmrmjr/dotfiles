call plug#begin()
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install --frozen-lockfile --production',
      \ 'for': ['javascript', 'typescript', 'javascriptreact','typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
    Plug 'ntk148v/vim-horizon'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'windwp/nvim-autopairs'
    Plug 'Shougo/defx.nvim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kristijanhusak/defx-icons'
    Plug 'kristijanhusak/defx-git'
    Plug 'iberianpig/tig-explorer.vim'
    Plug 'tpope/vim-surround'
    Plug 'phaazon/hop.nvim'
    Plug 'tpope/vim-commentary'
    Plug 'marko-cerovac/material.nvim'
    Plug 'sainnhe/edge'
    Plug 'iberianpig/tig-explorer.vim'
call plug#end()
