local fzf = require'fzf-lua'

require'fzf-lua'.setup({
  winopts = {
    height     = 0.85,     -- window height
    width      = 0.80,     -- window width
    row        = 0.35,     -- window row position (0=top, 1=bottom)
    col        = 0.50,     -- window col position (0=left, 1=right)
    border     = 'rounded', -- 'none', 'single', 'double', 'thicc' or 'rounded'
    -- fullscreen = false,    -- start fullscreen?
  },
})

vim.cmd [[
highlight FzfLuaNormal guibg=#383850
highlight FzfLuaBorder guibg=#383850
]]

-- vim.opt.winblend = 5
-- vim.opt.termguicolors = true
--

local maps = {
  {'n', '<leader>p', fzf.files},
  {'n', '<leader>g', fzf.live_grep},
  {'n', 'gr', fzf.lsp_references},
  {'n', 'gi', fzf.lsp_implementations},
  {'n', 'gy', fzf.lsp_typedefs},
}

for _, v in pairs(maps) do
  vim.keymap.set(unpack(v))
end

-- vim.keymap.set('n', '<leader>p', fzf.files)
-- vim.keymap.set('n', '<leader>g', fzf.grep)
-- -- vim.keymap.set('n', '<leader>/', "<cmd>lua require('fzf-lua').blines()<CR>")
-- -- vim.keymap.set('n', '<leader>g', "<cmd>lua require('fzf-lua').git_status()<CR>")
-- -- vim.keymap.set('n', '<leader>b', "<cmd>lua require('fzf-lua').git_branches()<CR>")
--
-- vim.keymap.set('n', 'gr', fzf.lsp_references)
-- -- vim.keymap.set('n', '<leader>d', "<cmd>lua require('fzf-lua').lsp_definitions()<CR>")
-- -- vim.keymap.set('n', '<leader>D', "<cmd>lua require('fzf-lua').lsp_declarations()<CR>")
-- vim.keymap.set('n', 'gi', fzf.lsp_implementations)
-- -- vim.keymap.set('n', '<leader>s', "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>")
-- vim.keymap.set('n', 'gy', fzf.lsp_typedefs)
-- -- vim.keymap.set('n', '<leader>l', fzf.diagnostics_document)
