nnoremap <C-p> :Prettier<CR>

au FileType css,scss,tsx,jsx,js,ts let b:prettier_exec_cmd = "prettier-stylelint"
" autocmd BufWritePre *.js,*.ts,*tsx,*jsx,*.vue,*.css,*.scss,*.json,*.md PrettierAsync
