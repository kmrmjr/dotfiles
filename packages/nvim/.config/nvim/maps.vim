" Leader
let mapleader = "\<Space>"

" Exit insert mode with jj
inoremap <silent> jj <ESC>

" Swap ; for : in normal mode
nnoremap ; :
vnoremap : ;

" Move cursor by display lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Move cursor by lines
nnoremap gj j
nnoremap gk k
vnoremap gj j
vnoremap gk k

" move left and right in insert mode
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Move to start of line with H
nnoremap H ^
vnoremap H ^
" Move to end of line with L
nnoremap L $
vnoremap L $h


" Operator settings
" d, c: delete texts without overwriting the yanked text.
" t: delete texts overwriting the yanked text.
vnoremap d "_d
nnoremap d "_d
vnoremap D "_D
nnoremap D "_D
vnoremap x "_x
nnoremap x "_x
vnoremap s "_s
nnoremap s "_s

" Delete texts overwriting the yanked text.
nnoremap t d
vnoremap t x
nnoremap tt dd
nnoremap T D

" Change texts without overwriting the yanked text.
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" paste texts without overwriting the yanked text.
vnoremap p "_dP

" duplicate line
nnoremap dl "dyy"dp
vnoremap <Leader>d ma"dy`a"dp


" Split window
nmap ss :split<Return><C-w>j
nmap sv :vsplit<Return><C-w>l

" Make current window full-width
map fw <C-w>\|

" Make all window's hight and width same
map rw <C-w>=

" Delete highlight 
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" Open current directory
nmap te :tab split<CR>
nmap <C-h> :tabprev<Return>
nmap <C-l> :tabnext<Return>

" Save and close file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>w<CR> :w<CR>
nnoremap <Leader>q<CR> :q!<CR>
nnoremap <Leader>qqq :bufdo! q!<CR>
nnoremap <Leader>www :bufdo! wq!<CR>
nnoremap <Leader>wq :wq<CR>

" Operate block
nnoremap tb %v%t<C-o>

" Operate all
nmap <C-a> gg<S-v>G
nmap ta<CR> :%d<CR>
nmap ya<CR> :%y<CR>
nmap da<CR> <C-a>d
