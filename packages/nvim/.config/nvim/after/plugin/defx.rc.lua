-- -- Define mappings
-- vim.cmd([[cnoreabbrev sf Defx -listed -new -columns=indent:mark:icon:icons:filename:git:size -buffer-name=tab..tabpagenr()]])

-- アイコンないと落ちる
-- vim.api.nvim_set_keymap('n', 'sf', ":<C-u>Defx -listed -resume -show-ignored-files -columns=indent:mark:icon:space:icons:space:filename:git:size -buffer-name=tab..tabpagenr() expand('%:p:h') -search=expand('%:p')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', 'sf', ":<C-u>Defx -listed -resume -show-ignored-files -columns=indent:mark:space:icon:space:icons:space:filename:git:size -buffer-name=tab`tabpagenr()` -search=`expand('%:p')` `expand('%:p:h')`<CR>", { silent = true })
vim.api.nvim_set_keymap('n', 'fi', ':<C-u>Defx expand(\'%:p:h\') -search=expand(\'%:p\')<CR>', { silent = true })

-- Start Defx when Vim starts with a directory argument.
vim.cmd([[autocmd StdinReadPre * let s:std_in=1]])
vim.cmd([[autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'Defx -show-ignored-files -columns=indent:mark:icon:space:icons:space:filename:git:size' argv()[0] | endif]])

-- vim.cmd([[autocmd FileType defx call s:defx_my_settings()]])
-- vim.cmd([[
-- function! s:defx_my_settings() abort
--     " Define mappings
-- endfunction
-- ]])


local maps = {
  {0, 'n', '<CR>', "defx#do_action('open')", { silent = true, expr = true }},
  {0, 'n', 'c', "defx#do_action('copy')", { silent = true, expr = true }},
  {0, 'n', 'm', "defx#do_action('move')", { silent = true, expr = true }},
  {0, 'n', 'p', "defx#do_action('paste')", { silent = true, expr = true }},
  {0, 'n', 'l', "defx#do_action('open')", { silent = true, expr = true }},
  {0, 'n', 'E', "defx#do_action('open', 'vsplit')", { silent = true, expr = true }},
  {0, 'n', 'P', "defx#do_action('preview')", { silent = true, expr = true }},
  {0, 'n', 'o', "defx#do_action('open_tree', 'toggle')", { silent = true, expr = true }},
  {0, 'n', 'K', "defx#do_action('new_directory')", { silent = true, expr = true }},
  {0, 'n', 'N', "defx#do_action('new_file')", { silent = true, expr = true }},
  {0, 'n', 'M', "defx#do_action('new_multiple_files')", { silent = true, expr = true }},
  {0, 'n', 'C', "defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')", { silent = true, expr = true }},
  {0, 'n', 'S', "defx#do_action('toggle_sort', 'time')", { silent = true, expr = true }},
  {0, 'n', 'd', "defx#do_action('remove')", { silent = true, expr = true }},
  {0, 'n', 'r', "defx#do_action('rename')", { silent = true, expr = true }},
  {0, 'n', '!', "defx#do_action('execute_command')", { silent = true, expr = true }},
  {0, 'n', 'x', "defx#do_action('execute_system')", { silent = true, expr = true }},
  {0, 'n', 'yy', "defx#do_action('yank_path')", { silent = true, expr = true }},
  {0, 'n', '.', "defx#do_action('toggle_ignored_files')", { silent = true, expr = true }},
  {0, 'n', ';', "defx#do_action('repeat')", { silent = true, expr = true }},
  {0, 'n', 'h', "defx#do_action('cd', ['..'])", { silent = true, expr = true }},
  {0, 'n', '~', "defx#do_action('cd')", { silent = true, expr = true }},
  {0, 'n', 'q', "defx#do_action('quit')", { silent = true, expr = true }},
  {0, 'n', '<Space>', "defx#do_action('toggle_select') .. 'j'", { silent = true, expr = true }},
  {0, 'n', '*', "defx#do_action('toggle_select_all')", { silent = true, expr = true }},
  {0, 'n', 'j', "line('.') == line('$') ? 'gg' : 'j'", { silent = true, expr = true }},
  {0, 'n', 'k', "line('.') == 1 ? 'G' : 'k'", { silent = true, expr = true }},
  {0, 'n', '<C-l>', "defx#do_action('redraw')", { silent = true, expr = true }},
  {0, 'n', '<C-g>', "defx#do_action('print')", { silent = true, expr = true }},
  {0, 'n', 'cd', "defx#do_action('change_vim_cwd')", { silent = true, expr = true }},
}



-- vim.cmd([[autocmd FileType defx call s:defx_my_settings()]])
-- vim.cmd([[
-- function! s:defx_my_settings() abort
--     " Define mappings
-- endfunction
-- ]])
function defx_my_settings()
  for i,  v in ipairs(maps) do
    vim.api.nvim_buf_set_keymap(unpack(v))
  end
end

vim.cmd('autocmd FileType defx call v:lua.defx_my_settings()')

-- local autocmd = vim.api.nvim_create_autocmd
-- autocmd("FileType",
--   {
--     pattern= "defx",
--     callback= defx_my_settings,
--   }
-- )

-- vim.api.nvim_create_autocmd("FileType", "defx", false, defx_my_settings)

vim.fn['defx#custom#column']('space', { directory_icon = 'a', opened_icon = 'a', root_icon = 'a' })
vim.fn['defx#custom#column']('icon', { directory_icon = '▸', opened_icon = '▾', root_icon = ' ' })
vim.fn['defx#custom#column']('git', 'indicators', {
    Modified = 'M',
    Staged = '✚',
    Untracked = '✭',
    Renamed = '➜',
    Unmerged = '═',
    Ignored = '☒',
    Deleted = '✖',
    Unknown = '?'
})

