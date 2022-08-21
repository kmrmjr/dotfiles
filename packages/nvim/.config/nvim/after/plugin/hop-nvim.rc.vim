lua require'hop'.setup()
nnoremap <C-c> :HopChar1<CR>
nnoremap <silent><leader>cc :HopChar1<CR>
nnoremap <silent><leader>s :HopChar2<CR>
nnoremap <silent><leader>j :HopLineStartAC<CR>
nnoremap <silent><leader>k :HopLineStartBC<CR>
nnoremap <silent><leader>l :HopWordCurrentLine<CR>
nnoremap <silent><leader>h :HopWordCurrentLine<CR>
hi HopNextKey guifg=#f8ff38
hi HopNextKey1 guifg=#ffc038
hi HopNextKey2 guifg=#f8ff38
