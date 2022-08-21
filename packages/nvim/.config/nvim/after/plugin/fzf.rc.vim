let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
nnoremap <silent> <Leader>p :Files<CR>

nnoremap <silent> <Leader>g :<C-u>silent call <SID>find_rip_grep()<CR>

function! s:find_rip_grep() abort
    call fzf#vim#grep(
                \   'rg --ignore-file ~/.ignore --column --line-number --no-heading --hidden --smart-case .+',
                \   1,
                \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
                \   0,
                \ )
endfunction
